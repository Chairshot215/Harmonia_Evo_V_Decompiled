.class public Lorg/apache/xalan/processor/ProcessorImport;
.super Lorg/apache/xalan/processor/ProcessorInclude;
.source "ProcessorImport.java"


# static fields
.field static final serialVersionUID:J = -0x727523d6d5b3f375L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorInclude;-><init>()V

    return-void
.end method


# virtual methods
.method protected getStylesheetInclErr()Ljava/lang/String;
    .locals 1

    const-string v0, "ER_IMPORTING_ITSELF"

    return-object v0
.end method

.method protected getStylesheetType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

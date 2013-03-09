.class public Lcom/google/wireless/gdata2/data/ExtendedProperty;
.super Ljava/lang/Object;
.source "ExtendedProperty.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private xmlBlob:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 80
    const-string v0, "ExtendedProperty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, " xmlBlob:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_2
    return-void
.end method

.class public Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private domesticCarrierCodeFormattingRule_:Ljava/lang/String;

.field private format_:Ljava/lang/String;

.field private hasDomesticCarrierCodeFormattingRule:Z

.field private hasFormat:Z

.field private hasNationalPrefixFormattingRule:Z

.field private hasPattern:Z

.field private leadingDigitsPattern_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nationalPrefixFormattingRule_:Ljava/lang/String;

.field private pattern_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addLeadingDigitsPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .parameter "value"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-object p0
.end method

.method public clearNationalPrefixFormattingRule()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public getDomesticCarrierCodeFormattingRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    return-object v0
.end method

.method public getLeadingDigitsPattern(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixFormattingRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDomesticCarrierCodeFormattingRule()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    return v0
.end method

.method public hasFormat()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    return v0
.end method

.method public hasNationalPrefixFormattingRule()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    return v0
.end method

.method public hasPattern()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    return v0
.end method

.method public leadingDigitPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    return-object v0
.end method

.method public leadingDigitsPatternSize()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 3
    .parameter "other"

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v1

    .line 126
    .local v1, leadingDigitsPatternSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 127
    invoke-virtual {p1, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->addLeadingDigitsPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 132
    :cond_3
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 135
    :cond_4
    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .parameter "objectInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 159
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 160
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 161
    .local v1, leadingDigitsPatternSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 167
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 170
    :cond_2
    return-void
.end method

.method public setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .parameter "value"

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    .line 114
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .parameter "value"

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    .line 68
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .parameter "value"

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 96
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .parameter "value"

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    .line 57
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .parameter "objectOutput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v1

    .line 142
    .local v1, leadingDigitsPatternSize:I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 148
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 151
    :cond_1
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 152
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 155
    :cond_2
    return-void
.end method

.class public Lcom/google/wireless/gdata2/contacts/data/GeoPt;
.super Ljava/lang/Object;
.source "GeoPt.java"


# instance fields
.field private elevation:Ljava/lang/Float;

.field private label:Ljava/lang/String;

.field private latitude:Ljava/lang/Float;

.field private longitude:Ljava/lang/Float;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitute()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    return-object v0
.end method

.method public getLongitute()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setElevation(Ljava/lang/Float;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    .line 52
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->label:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setLatitude(Ljava/lang/Float;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    .line 36
    return-void
.end method

.method public setLongitude(Ljava/lang/Float;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    .line 44
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->time:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->toString(Ljava/lang/StringBuffer;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    const-string v0, "GeoPt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const-string v0, " latitude:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    if-eqz v0, :cond_1

    const-string v0, " longitude:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    if-eqz v0, :cond_2

    const-string v0, " elevation:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->time:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, " time:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->label:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, " label:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/GeoPt;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :cond_4
    return-void
.end method

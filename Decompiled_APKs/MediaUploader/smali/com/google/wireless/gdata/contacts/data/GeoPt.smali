.class public Lcom/google/wireless/gdata/contacts/data/GeoPt;
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
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitute()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    return-object v0
.end method

.method public getLongitute()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setElevation(Ljava/lang/Float;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    .line 45
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->label:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setLatitude(Ljava/lang/Float;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    .line 29
    return-void
.end method

.method public setLongitude(Ljava/lang/Float;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    .line 37
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->time:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/contacts/data/GeoPt;->toString(Ljava/lang/StringBuffer;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    const-string v0, "GeoPt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const-string v0, " latitude:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    if-eqz v0, :cond_1

    const-string v0, " longitude:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    if-eqz v0, :cond_2

    const-string v0, " elevation:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->time:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, " time:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->label:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, " label:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_4
    return-void
.end method

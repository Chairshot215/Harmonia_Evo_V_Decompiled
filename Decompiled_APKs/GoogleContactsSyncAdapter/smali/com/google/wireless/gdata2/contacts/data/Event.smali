.class public Lcom/google/wireless/gdata2/contacts/data/Event;
.super Lcom/google/wireless/gdata2/contacts/data/TypedElement;
.source "Event.java"


# instance fields
.field private startDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;)V
    .locals 0
    .parameter "startDate"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 28
    invoke-direct {p0, p2, p3}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;-><init>(BLjava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Event;->startDate:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Event;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0
    .parameter "startDate"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Event;->startDate:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 47
    const-string v0, "Event"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->toString(Ljava/lang/StringBuffer;)V

    .line 49
    const-string v0, " date:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Event;->startDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    return-void
.end method

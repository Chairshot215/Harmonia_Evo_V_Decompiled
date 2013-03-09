.class public Lcom/android/mms/dom/smil/SmilElementImpl;
.super Lcom/android/mms/dom/ElementImpl;
.source "SmilElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILElement;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/dom/ElementImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method

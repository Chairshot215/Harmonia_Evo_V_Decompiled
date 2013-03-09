.class public Lcom/futuredial/vxx/vcard/VCardNestedException;
.super Lcom/futuredial/vxx/vcard/VCardException;
.source "VCardNestedException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/futuredial/vxx/vcard/VCardException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

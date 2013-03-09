.class public Lcom/android/vcard/exception/VCardNotSupportedException;
.super Lcom/android/vcard/exception/VCardException;
.source "VCardNotSupportedException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/vcard/exception/VCardException;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

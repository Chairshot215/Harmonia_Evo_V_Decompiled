.class public Lcom/android/vcard/exception/VCardNestedException;
.super Lcom/android/vcard/exception/VCardNotSupportedException;
.source "VCardNestedException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/vcard/exception/VCardNotSupportedException;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/vcard/exception/VCardNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.class public Lcom/htc/wrap/com/android/vcard/HtcWrapVCardParser;
.super Ljava/lang/Object;
.source "HtcWrapVCardParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIgnoreVersionCheck(Lcom/android/vcard/VCardParser;Z)V
    .locals 0
    .parameter "parser"
    .parameter "ignoreVersionCheck"

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardParser;->setIgnoreVersionCheck(Z)V

    .line 8
    return-void
.end method

.class public Lcom/htc/wrap/com/android/vcard/HtcWrapVCardComposer;
.super Lcom/android/vcard/VCardComposer;
.source "HtcWrapVCardComposer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "vcardType"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "careHandlerErrors"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Long;)V
    .locals 0
    .parameter "context"
    .parameter "selectedColumnIDs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;[Ljava/lang/Long;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Long;I)V
    .locals 0
    .parameter "context"
    .parameter "selectedColumnIDs"
    .parameter "vcardType"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;[Ljava/lang/Long;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/vcard/VCardComposer;->getContactName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setUseRawContact(Z)V
    .locals 0
    .parameter "useRawContact"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/vcard/VCardComposer;->setUseRawContact(Z)V

    .line 45
    return-void
.end method

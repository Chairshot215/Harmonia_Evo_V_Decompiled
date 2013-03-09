.class public Lcom/htc/wrap/com/android/vcard/HtcWrapVCardComposer;
.super Lcom/android/vcard/VCardComposer;
.source "HtcWrapVCardComposer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;[Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Long;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;[Ljava/lang/Long;I)V

    return-void
.end method


# virtual methods
.method public getContactName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/vcard/VCardComposer;->getContactName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setUseRawContact(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/vcard/VCardComposer;->setUseRawContact(Z)V

    return-void
.end method

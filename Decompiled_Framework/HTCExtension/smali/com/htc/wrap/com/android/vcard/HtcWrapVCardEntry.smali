.class public Lcom/htc/wrap/com/android/vcard/HtcWrapVCardEntry;
.super Ljava/lang/Object;
.source "HtcWrapVCardEntry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidCustomPropertyList(Lcom/android/vcard/VCardEntry;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vcard/VCardEntry;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAnniversary(Lcom/android/vcard/VCardEntry;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getAnniversary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVCardType(Lcom/android/vcard/VCardEntry;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getVCardType()I

    move-result v0

    return v0
.end method

.method public static setAccount(Lcom/android/vcard/VCardEntry;Landroid/accounts/Account;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardEntry;->setAccount(Landroid/accounts/Account;)V

    return-void
.end method

.method public static setAnniversary(Lcom/android/vcard/VCardEntry;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardEntry;->setAnniversary(Ljava/lang/String;)V

    return-void
.end method

.method public static setBirthday(Lcom/android/vcard/VCardEntry;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardEntry;->setBirthday(Ljava/lang/String;)V

    return-void
.end method

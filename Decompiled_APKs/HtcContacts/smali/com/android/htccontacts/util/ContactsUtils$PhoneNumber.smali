.class public Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumber"
.end annotation


# instance fields
.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 1441
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;->number:Ljava/lang/String;

    .line 1443
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 1451
    const/4 v1, 0x0

    .line 1452
    .local v1, result:Z
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;->number:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1463
    :cond_0
    :goto_0
    return v3

    .line 1454
    :cond_1
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object v2, p1

    .line 1455
    check-cast v2, Ljava/lang/String;

    .line 1456
    .local v2, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;->number:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;->number:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const/4 v1, 0x1

    .end local v2           #s:Ljava/lang/String;
    :cond_3
    :goto_1
    move v3, v1

    .line 1463
    goto :goto_0

    .restart local v2       #s:Ljava/lang/String;
    :cond_4
    move v1, v3

    .line 1456
    goto :goto_1

    .line 1459
    .end local v2           #s:Ljava/lang/String;
    :cond_5
    instance-of v3, p1, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1460
    check-cast v0, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;

    .line 1461
    .local v0, phone:Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1467
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;->number:Ljava/lang/String;

    return-object v0
.end method

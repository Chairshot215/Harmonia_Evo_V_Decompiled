.class public Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "PhoneNumber.java"


# static fields
.field public static final TYPE_ASSISTANT:B = 0x7t

.field public static final TYPE_CALLBACK:B = 0x8t

.field public static final TYPE_CAR:B = 0x9t

.field public static final TYPE_COMPANY_MAIN:B = 0xat

.field public static final TYPE_HOME:B = 0x2t

.field public static final TYPE_HOME_FAX:B = 0x5t

.field public static final TYPE_ISDN:B = 0xbt

.field public static final TYPE_MAIN:B = 0xct

.field public static final TYPE_MOBILE:B = 0x1t

.field public static final TYPE_OTHER:B = 0x13t

.field public static final TYPE_OTHER_FAX:B = 0xdt

.field public static final TYPE_PAGER:B = 0x6t

.field public static final TYPE_RADIO:B = 0xet

.field public static final TYPE_TELEX:B = 0xft

.field public static final TYPE_TTY_TDD:B = 0x10t

.field public static final TYPE_WORK:B = 0x3t

.field public static final TYPE_WORK_FAX:B = 0x4t

.field public static final TYPE_WORK_MOBILE:B = 0x11t

.field public static final TYPE_WORK_PAGER:B = 0x12t


# instance fields
.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p2, p3, p4}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>(BLjava/lang/String;Z)V

    .line 38
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    const-string v0, "PhoneNumber"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 53
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " phoneNumber:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_0
    return-void
.end method

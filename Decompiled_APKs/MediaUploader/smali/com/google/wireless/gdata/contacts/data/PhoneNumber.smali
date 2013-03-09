.class public Lcom/google/wireless/gdata/contacts/data/PhoneNumber;
.super Lcom/google/wireless/gdata/contacts/data/ContactsElement;
.source "PhoneNumber.java"


# static fields
.field public static final TYPE_HOME:B = 0x2t

.field public static final TYPE_HOME_FAX:B = 0x5t

.field public static final TYPE_MOBILE:B = 0x1t

.field public static final TYPE_OTHER:B = 0x7t

.field public static final TYPE_PAGER:B = 0x6t

.field public static final TYPE_WORK:B = 0x3t

.field public static final TYPE_WORK_FAX:B = 0x4t


# instance fields
.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    const-string v0, "PhoneNumber"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 31
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " phoneNumber:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    :cond_0
    return-void
.end method

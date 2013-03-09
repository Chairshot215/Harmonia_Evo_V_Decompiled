.class public Lcom/android/mms/ui/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;,
        Lcom/android/mms/ui/VCardUtils$EntryParseCommitter;,
        Lcom/android/mms/ui/VCardUtils$EntryParseHandler;,
        Lcom/android/mms/ui/VCardUtils$VCardReadThread;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardUtils"

.field public static final MAX_DATA_COLUMN:I = 0xf

.field public static final TARGET_DATABASE:I = 0x1

.field public static final TARGET_STRUCTURE:I = 0x2

.field private static final VCARD_ATTR_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_ATTR_ENCODING_BASE64_V30:Ljava/lang/String; = "ENCODING=b"

.field private static final VCARD_ATTR_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_ATTR_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_COL_SEPARATOR:Ljava/lang/String; = "\r\n"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_PROPERTY_PHOTO:Ljava/lang/String; = "PHOTO"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field private static final emailTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final emailTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAccount:Landroid/accounts/Account;

.field private static mNewline:Ljava/lang/String;

.field private static mResult:Ljava/lang/StringBuilder;

.field private static mVCardReadThread:Lcom/android/mms/ui/VCardUtils$VCardReadThread;

.field private static final phoneTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final phoneTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/ui/VCardUtils;->phoneTypeMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/ui/VCardUtils;->emailTypeMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CELL"

    aput-object v3, v1, v2

    const-string v2, "AOL"

    aput-object v2, v1, v4

    const-string v2, "APPLELINK"

    aput-object v2, v1, v5

    const-string v2, "ATTMAIL"

    aput-object v2, v1, v6

    const-string v2, "CIS"

    aput-object v2, v1, v7

    const-string v2, "EWORLD"

    aput-object v2, v1, v8

    const/4 v2, 0x6

    const-string v3, "INTERNET"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "IBMMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "MCIMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "POWERSHARE"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "PRODIGY"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "TLX"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "X400"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/mms/ui/VCardUtils;->emailTypes:Ljava/util/HashSet;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PREF"

    aput-object v3, v1, v2

    const-string v2, "WORK"

    aput-object v2, v1, v4

    const-string v2, "HOME"

    aput-object v2, v1, v5

    const-string v2, "VOICE"

    aput-object v2, v1, v6

    const-string v2, "FAX"

    aput-object v2, v1, v7

    const-string v2, "MSG"

    aput-object v2, v1, v8

    const/4 v2, 0x6

    const-string v3, "CELL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "PAGER"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "BBS"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "MODEM"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CAR"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "ISDN"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "VIDEO"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/mms/ui/VCardUtils;->phoneTypes:Ljava/util/HashSet;

    .line 97
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HOME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WORK;FAX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HOME;FAX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->phoneTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PAGER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->phoneTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-OTHER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->emailTypeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HOME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->emailTypeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    return-void
.end method

.method private static appendEmailStr(Ljava/util/List;I)V
    .locals 9
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p0, emails:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$EmailData;>;"
    const/high16 v8, -0x4000

    .line 690
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 691
    .local v2, emailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-ne p1, v8, :cond_3

    const-string v4, ";"

    .line 692
    .local v4, joinMark:Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    .line 694
    .local v0, email:Lcom/android/vcard/VCardEntry$EmailData;
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/VCardUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 695
    const-string v5, "INTERNET"

    .line 696
    .local v5, mailType:Ljava/lang/String;
    sget-object v6, Lcom/android/mms/ui/VCardUtils;->emailTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 697
    sget-object v6, Lcom/android/mms/ui/VCardUtils;->emailTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #mailType:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 702
    .restart local v5       #mailType:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 703
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 706
    :cond_2
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 691
    .end local v0           #email:Lcom/android/vcard/VCardEntry$EmailData;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #joinMark:Ljava/lang/String;
    .end local v5           #mailType:Ljava/lang/String;
    :cond_3
    const-string v4, ","

    goto :goto_0

    .line 698
    .restart local v0       #email:Lcom/android/vcard/VCardEntry$EmailData;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #joinMark:Ljava/lang/String;
    .restart local v5       #mailType:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getLabel()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 700
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getLabel()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 710
    .end local v0           #email:Lcom/android/vcard/VCardEntry$EmailData;
    .end local v5           #mailType:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 711
    .local v1, email2:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-ne p1, v8, :cond_6

    .line 712
    sget-object v6, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v7, "EMAIL;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :goto_4
    sget-object v7, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 714
    :cond_6
    sget-object v6, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v7, "EMAIL;TYPE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 719
    .end local v1           #email2:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    return-void
.end method

.method private static appendNameStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "fullname"
    .parameter "name"

    .prologue
    .line 596
    invoke-static {p0}, Lcom/android/mms/ui/VCardUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "FN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/VCardUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "N:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_1
    return-void
.end method

.method private static appendPhoneStr(Ljava/util/List;I)V
    .locals 9
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p0, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    const/high16 v8, -0x4000

    .line 736
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 737
    .local v3, numMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-ne p1, v8, :cond_3

    const-string v1, ";"

    .line 739
    .local v1, joinMark:Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 741
    .local v4, phone:Lcom/android/vcard/VCardEntry$PhoneData;
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/VCardUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 742
    invoke-static {v4}, Lcom/android/mms/ui/VCardUtils;->getPhoneTypeStr(Lcom/android/vcard/VCardEntry$PhoneData;)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, type:Ljava/lang/String;
    const v6, -0x3fffffff

    if-ne p1, v6, :cond_1

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 744
    const-string v6, ";"

    const-string v7, ","

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 746
    :cond_1
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 747
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 749
    :cond_2
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 737
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #joinMark:Ljava/lang/String;
    .end local v4           #phone:Lcom/android/vcard/VCardEntry$PhoneData;
    .end local v5           #type:Ljava/lang/String;
    :cond_3
    const-string v1, ","

    goto :goto_0

    .line 753
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #joinMark:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 755
    .local v2, num:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-ne p1, v8, :cond_5

    .line 756
    sget-object v6, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v7, "TEL;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :goto_3
    sget-object v7, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 758
    :cond_5
    sget-object v6, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v7, "TEL;TYPE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 764
    .end local v2           #num:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method private static appendPhotoStr(Ljava/lang/StringBuilder;Ljava/util/List;I)V
    .locals 12
    .parameter "builder"
    .parameter
    .parameter "vcardversion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    const/16 v11, 0x47

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 553
    if-eqz p1, :cond_4

    .line 554
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 555
    .local v2, photo:Lcom/android/vcard/VCardEntry$PhotoData;
    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v0

    .line 556
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 562
    array-length v5, v0

    if-lt v5, v10, :cond_1

    aget-byte v5, v0, v7

    if-ne v5, v11, :cond_1

    aget-byte v5, v0, v8

    const/16 v6, 0x49

    if-ne v5, v6, :cond_1

    aget-byte v5, v0, v9

    const/16 v6, 0x46

    if-ne v5, v6, :cond_1

    .line 564
    const-string v4, "GIF"

    .line 580
    .local v4, photoType:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 581
    .local v3, photoString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 582
    invoke-static {p0, v3, v4, p2}, Lcom/android/mms/ui/VCardUtils;->appendVCardPhotoLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 565
    .end local v3           #photoString:Ljava/lang/String;
    .end local v4           #photoType:Ljava/lang/String;
    :cond_1
    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2

    aget-byte v5, v0, v7

    const/16 v6, -0x77

    if-ne v5, v6, :cond_2

    aget-byte v5, v0, v8

    const/16 v6, 0x50

    if-ne v5, v6, :cond_2

    aget-byte v5, v0, v9

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_2

    aget-byte v5, v0, v10

    if-ne v5, v11, :cond_2

    .line 572
    const-string v4, "PNG"

    .restart local v4       #photoType:Ljava/lang/String;
    goto :goto_1

    .line 573
    .end local v4           #photoType:Ljava/lang/String;
    :cond_2
    array-length v5, v0

    if-lt v5, v9, :cond_3

    aget-byte v5, v0, v7

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    aget-byte v5, v0, v8

    const/16 v6, -0x28

    if-ne v5, v6, :cond_3

    .line 575
    const-string v4, "JPEG"

    .restart local v4       #photoType:Ljava/lang/String;
    goto :goto_1

    .line 577
    .end local v4           #photoType:Ljava/lang/String;
    :cond_3
    const-string v5, "VCardUtils"

    const-string v6, "Unknown photo type. Ignore."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    .end local v0           #data:[B
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #photo:Lcom/android/vcard/VCardEntry$PhotoData;
    :cond_4
    return-void
.end method

.method private static appendPhotoStr([BLjava/lang/String;I)V
    .locals 6
    .parameter "bytes"
    .parameter "type"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 652
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p0, v5}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4, p2}, Lcom/android/mms/ui/VCardUtils;->foldingString(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 658
    .local v3, value:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/ui/VCardUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JPEG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 659
    :cond_0
    const-string p1, "JPEG"

    .line 674
    :goto_0
    sget-object v4, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v5, "LOGO;TYPE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    const/high16 v4, -0x4000

    if-ne p2, v4, :cond_6

    .line 676
    const-string v1, ";ENCODING=BASE64:"

    .line 677
    .local v1, encodingStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 683
    :goto_1
    sget-object v4, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .end local v1           #encodingStr:Ljava/lang/String;
    :cond_1
    return-void

    .line 654
    .end local v3           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 655
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 660
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GIF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 661
    const-string p1, "GIF"

    goto :goto_0

    .line 662
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BMP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 663
    const-string p1, "BMP"

    goto :goto_0

    .line 666
    :cond_4
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 667
    .local v2, indexOfSlash:I
    if-ltz v2, :cond_5

    .line 668
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 670
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 678
    .end local v2           #indexOfSlash:I
    :cond_6
    const v4, -0x3fffffff

    if-ne p2, v4, :cond_1

    .line 679
    const-string v1, ";ENCODING=b:"

    .restart local v1       #encodingStr:Ljava/lang/String;
    goto :goto_1
.end method

.method private static appendPostalStr(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p0, postals:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry$PostalData;

    .line 725
    .local v1, postal:Lcom/android/vcard/VCardEntry$PostalData;
    if-eqz v1, :cond_0

    .line 726
    sget-object v2, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v3, "ADR;TYPE=POSTAL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/mms/ui/VCardUtils;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 731
    .end local v1           #postal:Lcom/android/vcard/VCardEntry$PostalData;
    :cond_1
    return-void
.end method

.method private static appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 2
    .parameter "builder"
    .parameter "type"
    .parameter "vcardversion"

    .prologue
    .line 511
    const v0, -0x3fffffff

    if-ne p2, v0, :cond_0

    .line 512
    const-string v0, "TYPE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    return-void
.end method

.method private static appendVCardPhotoLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "builder"
    .parameter "encodedData"
    .parameter "photoType"
    .parameter "vcardversion"

    .prologue
    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .local v3, tmpBuilder:Ljava/lang/StringBuilder;
    const-string v5, "PHOTO"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const v5, -0x3fffffff

    if-ne p3, v5, :cond_1

    .line 524
    const-string v5, "ENCODING=b"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :goto_0
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-static {v3, p2, p3}, Lcom/android/mms/ui/VCardUtils;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 530
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, tmpStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #tmpBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .restart local v3       #tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 536
    .local v2, lineCount:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 537
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 538
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    add-int/lit8 v2, v2, 0x1

    .line 540
    const/16 v5, 0x48

    if-le v2, v5, :cond_0

    .line 541
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const/4 v2, 0x0

    .line 537
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 526
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #lineCount:I
    .end local v4           #tmpStr:Ljava/lang/String;
    :cond_1
    const-string v5, "ENCODING=BASE64"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 546
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #lineCount:I
    .restart local v4       #tmpStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string v5, "\r\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v5, "\r\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    return-void
.end method

.method public static binaryVCardToDatabase(Landroid/content/Context;Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "data"
    .parameter "account"

    .prologue
    .line 808
    new-instance v0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardUtils$VCardReadThread;-><init>(Landroid/content/Context;ILcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V

    sput-object v0, Lcom/android/mms/ui/VCardUtils;->mVCardReadThread:Lcom/android/mms/ui/VCardUtils$VCardReadThread;

    .line 809
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->mVCardReadThread:Lcom/android/mms/ui/VCardUtils$VCardReadThread;

    invoke-virtual {v0}, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->start()V

    .line 810
    return-void
.end method

.method public static binaryVCardToStructure(Landroid/content/Context;Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "data"
    .parameter "account"

    .prologue
    .line 814
    new-instance v0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;

    const/4 v2, 0x2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardUtils$VCardReadThread;-><init>(Landroid/content/Context;ILcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V

    sput-object v0, Lcom/android/mms/ui/VCardUtils;->mVCardReadThread:Lcom/android/mms/ui/VCardUtils$VCardReadThread;

    .line 815
    sget-object v0, Lcom/android/mms/ui/VCardUtils;->mVCardReadThread:Lcom/android/mms/ui/VCardUtils$VCardReadThread;

    invoke-virtual {v0}, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->start()V

    .line 816
    return-void
.end method

.method public static createVCard(Lcom/android/vcard/VCardEntry;I)Ljava/lang/String;
    .locals 14
    .parameter "vcardEntry"
    .parameter "vcardversion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/high16 v13, -0x4000

    .line 375
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v11, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$NameData;->getFormatted()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, fullname:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$NameData;->getFamily()Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 390
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 392
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$NameData;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 394
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$NameData;->getPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    :cond_2
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$NameData;->getSuffix()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 396
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$NameData;->getSuffix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    :cond_3
    if-ne p1, v13, :cond_5

    .line 400
    const-string v11, "\r\n"

    sput-object v11, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    .line 409
    :goto_0
    sget-object v11, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v12, "BEGIN:VCARD"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    if-ne p1, v13, :cond_7

    .line 412
    sget-object v11, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v12, "VERSION:2.1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :goto_1
    invoke-static {v1, v3}, Lcom/android/mms/ui/VCardUtils;->appendNameStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v7

    .line 425
    .local v7, orgs:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$OrganizationData;>;"
    if-eqz v7, :cond_8

    .line 426
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_8

    .line 427
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$OrganizationData;->getOrganizationName()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, org:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/VCardUtils;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 429
    sget-object v11, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v12, "ORG:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 401
    .end local v2           #i:I
    .end local v6           #org:Ljava/lang/String;
    .end local v7           #orgs:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$OrganizationData;>;"
    :cond_5
    const v11, -0x3fffffff

    if-ne p1, v11, :cond_6

    .line 402
    const-string v11, "\n"

    sput-object v11, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    goto :goto_0

    .line 404
    :cond_6
    new-instance v11, Lcom/android/vcard/exception/VCardException;

    const-string v12, " version not match VERSION_VCARD21 or VERSION_VCARD30."

    invoke-direct {v11, v12}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 414
    :cond_7
    sget-object v11, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v12, "VERSION:3.0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 435
    .restart local v7       #orgs:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$OrganizationData;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v5

    .line 436
    .local v5, notes:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$NoteData;>;"
    if-eqz v5, :cond_a

    .line 437
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_a

    .line 438
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/vcard/VCardEntry$NoteData;

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$NoteData;->getNote()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, note:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/VCardUtils;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 440
    sget-object v11, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v12, "NOTE:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4, p1}, Lcom/android/mms/ui/VCardUtils;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 446
    .end local v2           #i:I
    .end local v4           #note:Ljava/lang/String;
    :cond_a
    if-eqz v7, :cond_c

    .line 447
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_c

    .line 448
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$OrganizationData;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 449
    .local v10, title:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/VCardUtils;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 450
    sget-object v11, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v12, "ORG:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 456
    .end local v2           #i:I
    .end local v10           #title:Ljava/lang/String;
    :cond_c
    sget-object v11, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12, p1}, Lcom/android/mms/ui/VCardUtils;->appendPhotoStr(Ljava/lang/StringBuilder;Ljava/util/List;I)V

    .line 460
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v8

    .line 461
    .local v8, phones:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    if-eqz v8, :cond_d

    .line 462
    invoke-static {v8, p1}, Lcom/android/mms/ui/VCardUtils;->appendPhoneStr(Ljava/util/List;I)V

    .line 466
    :cond_d
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v0

    .line 467
    .local v0, emails:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$EmailData;>;"
    if-eqz v0, :cond_e

    .line 468
    invoke-static {v0, p1}, Lcom/android/mms/ui/VCardUtils;->appendEmailStr(Ljava/util/List;I)V

    .line 472
    :cond_e
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v9

    .line 473
    .local v9, postals:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    if-eqz v9, :cond_f

    .line 474
    invoke-static {v9, p1}, Lcom/android/mms/ui/VCardUtils;->appendPostalStr(Ljava/util/List;I)V

    .line 496
    :cond_f
    sget-object v11, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    const-string v12, "END:VCARD"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/mms/ui/VCardUtils;->mNewline:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    sget-object v11, Lcom/android/mms/ui/VCardUtils;->mResult:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private static foldingString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "version"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 620
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 628
    :goto_0
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 629
    const/high16 v1, -0x4000

    if-ne p1, v1, :cond_2

    .line 630
    const-string v0, "\n"

    const-string v1, "\r\n "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    :cond_0
    :goto_1
    return-object v0

    .line 622
    :cond_1
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 631
    :cond_2
    const v1, -0x3fffffff

    if-ne p1, v1, :cond_0

    .line 632
    const-string v0, "\n"

    const-string v1, "\n "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getPhoneTypeStr(Lcom/android/vcard/VCardEntry$PhoneData;)Ljava/lang/String;
    .locals 5
    .parameter "phone"

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v1

    .line 771
    .local v1, phoneType:I
    sget-object v3, Lcom/android/mms/ui/VCardUtils;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 772
    sget-object v3, Lcom/android/mms/ui/VCardUtils;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 784
    .local v2, typeStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 773
    .end local v2           #typeStr:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_3

    .line 774
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PhoneData;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, label:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/ui/VCardUtils;->phoneTypes:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 776
    :cond_1
    move-object v2, v0

    .restart local v2       #typeStr:Ljava/lang/String;
    goto :goto_0

    .line 778
    .end local v2           #typeStr:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-CUSTOM-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #typeStr:Ljava/lang/String;
    goto :goto_0

    .line 782
    .end local v0           #label:Ljava/lang/String;
    .end local v2           #typeStr:Ljava/lang/String;
    :cond_3
    const-string v2, "VOICE"

    .restart local v2       #typeStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private static isNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 501
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    :cond_0
    const/4 v0, 0x1

    .line 504
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static structureToBinaryVCard(Lcom/android/vcard/VCardEntry;)[B
    .locals 4
    .parameter "vcardEntry"

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 824
    .local v0, data:Ljava/lang/String;
    const/high16 v1, -0x4000

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/mms/ui/VCardUtils;->createVCard(Lcom/android/vcard/VCardEntry;I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 828
    :goto_0
    if-eqz v0, :cond_0

    .line 829
    const-string v1, "VCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "~~~~~~~~~~~~data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 833
    :goto_1
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 825
    :catch_0
    move-exception v1

    goto :goto_0
.end method

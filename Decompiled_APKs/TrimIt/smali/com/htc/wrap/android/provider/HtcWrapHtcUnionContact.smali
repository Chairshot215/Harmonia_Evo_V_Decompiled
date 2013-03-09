.class public Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SocialNetworkColumns;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SpeedDial;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SimpleContactInfo;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$HtcArrayAdapter;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$ContactUtils;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$Group;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$Thumbnails;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$ContactMethodInfo;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$PhoneInfo;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$PeopleInfo;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$MyContactCard;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$UnknowContactQueryURIException;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SimContacts;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$AllContacts;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SmartDialing;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$Intents;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$Config;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "contacts"

.field public static final CALL_LOG_BASE:I = 0x1e

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SIM_TYPE_BASE:I = 0x14

.field public static final UnreadEmailCountProjection:[Ljava/lang/String;

.field public static final UnreadMessageCountProjection:[Ljava/lang/String;

.field public static final idProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/provider/HtcUnionContact;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;->CONTENT_URI:Landroid/net/Uri;

    .line 41
    sget-object v0, Landroid/provider/HtcUnionContact;->idProjection:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;->idProjection:[Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/provider/HtcUnionContact;->UnreadEmailCountProjection:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;->UnreadEmailCountProjection:[Ljava/lang/String;

    .line 43
    sget-object v0, Landroid/provider/HtcUnionContact;->UnreadMessageCountProjection:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;->UnreadMessageCountProjection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsSIMContactUri(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p0}, Landroid/provider/HtcUnionContact;->IsSIMContactUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static batchUpdateStarredContact(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter "resolver"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/HtcUnionContact;->batchUpdateStarredContact(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public static getContactByMail(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "mailAddress"

    .prologue
    .line 317
    invoke-static {p0, p1}, Landroid/provider/HtcUnionContact;->getContactByMail(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getDisplayExchangeMailLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    invoke-static {p0, p1, p2}, Landroid/provider/HtcUnionContact;->getDisplayExchangeMailLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getDisplayHtcPhoneLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 279
    invoke-static {p0, p1, p2}, Landroid/provider/HtcUnionContact;->getDisplayHtcPhoneLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getDisplayMailLabelForId(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "mailId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    invoke-static {p0, p1, p2}, Landroid/provider/HtcUnionContact;->getDisplayMailLabelForId(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getDisplayMailLabelForId(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "mailId"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/HtcUnionContact;->getDisplayMailLabelForId(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getDisplayPhoneLabelForId(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "phoneId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    invoke-static {p0, p1, p2}, Landroid/provider/HtcUnionContact;->getDisplayPhoneLabelForId(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getFacebookSquareBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bmSrc"
    .parameter "nSize"
    .parameter "bmFacebookIcon"

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Landroid/provider/HtcUnionContact;->getFacebookSquareBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getMonthNumber(Ljava/lang/String;)I
    .locals 1
    .parameter "monthText"

    .prologue
    .line 69
    invoke-static {p0}, Landroid/provider/HtcUnionContact;->getMonthNumber(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPersonNameAndAddressFromDeviceMailRowId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 1
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outAddressBuf"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    invoke-static {p0, p1, p2, p3}, Landroid/provider/HtcUnionContact;->getPersonNameAndAddressFromDeviceMailRowId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v0

    return v0
.end method

.method public static getPersonNameAndNumberFromDevicePhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 1
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    .line 245
    invoke-static {p0, p1, p2, p3}, Landroid/provider/HtcUnionContact;->getPersonNameAndNumberFromDevicePhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v0

    return v0
.end method

.method public static getPersonNameAndNumberFromSIMPhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 1
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    .line 255
    invoke-static {p0, p1, p2, p3}, Landroid/provider/HtcUnionContact;->getPersonNameAndNumberFromSIMPhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v0

    return v0
.end method

.method public static getStarredInAnrdoidGroupContentValues(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 1
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    invoke-static {p0}, Landroid/provider/HtcUnionContact;->getStarredInAnrdoidGroupContentValues(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static insertFacebookEvent(Landroid/content/ContentResolver;JILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "mResolver"
    .parameter "personId"
    .parameter "type"
    .parameter "eventDate"

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/HtcUnionContact;->insertFacebookEvent(Landroid/content/ContentResolver;JILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

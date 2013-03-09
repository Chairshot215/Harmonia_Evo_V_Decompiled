.class public Lcom/htc/wrap/android/provider/HtcWrapContacts$ContactMethods;
.super Ljava/lang/Object;
.source "HtcWrapContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactMethods"
.end annotation


# static fields
.field public static final CONTENT_EMAIL_URI_GROUP:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_POSTAL_ADDRESS_CITY:Ljava/lang/String; = "city"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_POSTAL_ADDRESS_COUNTRY:Ljava/lang/String; = "country"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_POSTAL_ADDRESS_STATE:Ljava/lang/String; = "state"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_POSTAL_ADDRESS_STREET:Ljava/lang/String; = "street"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_POSTAL_ADDRESS_ZIP:Ljava/lang/String; = "zip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_ADDRESS_CITY:I = 0x1010001
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_ADDRESS_COUNTRY:I = 0x1010000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_ADDRESS_STATE:I = 0x1010002
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_ADDRESS_STREET:I = 0x1010003
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_ADDRESS_ZIP:I = 0x1010004
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_DETALS_HASHMAC:Ljava/lang/String; = "mac"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_DETALS_LOCALE:Ljava/lang/String; = "locale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 837
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI_GROUP:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$ContactMethods;->CONTENT_EMAIL_URI_GROUP:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPostalDetails(Landroid/content/Context;JLjava/util/HashMap;JLjava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .parameter "context"
    .parameter "personId"
    .parameter
    .parameter "totalPostalId"
    .parameter "hashsource"
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 815
    .local p3, details:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p7}, Landroid/provider/Contacts$ContactMethods;->addPostalDetails(Landroid/content/Context;JLjava/util/HashMap;JLjava/lang/String;Ljava/util/Locale;)V

    .line 816
    return-void
.end method

.method public static conmbineAmericaAddress(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 786
    .local p0, details:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/provider/Contacts$ContactMethods;->conmbineAmericaAddress(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDetailMapByEncodeUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .parameter "uri"
    .parameter "macsource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 821
    invoke-static {p0, p1}, Landroid/provider/Contacts$ContactMethods;->getDetailMapByEncodeUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getEncodeUriByDetailMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/Locale;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter "hashsource"
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 793
    .local p0, details:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/Contacts$ContactMethods;->getEncodeUriByDetailMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/Locale;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPostalDetails(Landroid/content/Context;JLjava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .parameter "context"
    .parameter "postalId"
    .parameter "macsource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 827
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$ContactMethods;->getPostalDetails(Landroid/content/Context;JLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/htc/provider/ContactsContract$Contacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/ContactsContract$Contacts$MyContactCard;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTACT_QUERY_PARAMETER_EXCLUDE_SIM:Ljava/lang/String; = "excludeSIM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTACT_QUERY_PARAMETER_ONLY_PHONE:Ljava/lang/String; = "onlyPhone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTACT_QUERY_PARAMETER_ONLY_WRATABLE_CONTACT:Ljava/lang/String; = "excludeReadOnly"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static CONTENT_FAVORITE_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXCLUDE_FLICKR_CONTACT:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXCLUDE_MY_CONTACT_CARD:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXCLUDE_MY_CONTACT_CARD_RAW:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static UPDATE_FAVORITE_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 204
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_FAVORITE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/ContactsContract$Contacts;->CONTENT_FAVORITE_URI:Landroid/net/Uri;

    .line 210
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/ContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 216
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_MY_CONTACT_CARD:Ljava/lang/String;

    sput-object v0, Lcom/htc/provider/ContactsContract$Contacts;->EXCLUDE_MY_CONTACT_CARD:Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_FLICKR_CONTACT:Ljava/lang/String;

    sput-object v0, Lcom/htc/provider/ContactsContract$Contacts;->EXCLUDE_FLICKR_CONTACT:Ljava/lang/String;

    .line 222
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_MY_CONTACT_CARD_RAW:Ljava/lang/String;

    sput-object v0, Lcom/htc/provider/ContactsContract$Contacts;->EXCLUDE_MY_CONTACT_CARD_RAW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    return-void
.end method

.class public Lcom/htc/android/mail/eassvc/contact/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DUMMY_EMPTY:Ljava/lang/String; = ""

.field public static final KEY_CITY:Ljava/lang/String; = "city"

.field public static final KEY_COUNTRY:Ljava/lang/String; = "country"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_STREET:Ljava/lang/String; = "street"

.field public static final KEY_ZIP:Ljava/lang/String; = "zip"


# instance fields
.field public final INDEX_HOME:I

.field public final INDEX_OTHER:I

.field public final INDEX_WORK:I

.field public UnsupportedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;",
            ">;"
        }
    .end annotation
.end field

.field protected _id:Ljava/lang/String;

.field public addrCustom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public addrHome:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public addrOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public addrWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public anniversary:Ljava/lang/String;

.field public assistantTelephone:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public carTelephone:Ljava/lang/String;

.field public category:[Ljava/lang/String;

.field public company:Ljava/lang/String;

.field public companyMainPhone:Ljava/lang/String;

.field public emailAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public firstName:Ljava/lang/String;

.field public imAddr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public label:Ljava/lang/String;

.field public lastName:Ljava/lang/String;

.field public middleName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public notes:Ljava/lang/String;

.field public phoneCustom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phoneHome:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phoneHomeFax:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phoneMobile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phoneOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phonePager:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phoneWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phoneWorkFax:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photo:[B

.field private photoType:Ljava/lang/String;

.field public postalAddrs:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public radioTelephone:Ljava/lang/String;

.field public suffix:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public website:Ljava/lang/String;

.field public yomiFirstname:Ljava/lang/String;

.field public yomiLastname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/contact/Contact;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneHome:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneMobile:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneWork:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneWorkFax:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneHomeFax:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phonePager:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneOther:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneCustom:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->addrHome:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->addrWork:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->addrOther:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->addrCustom:Ljava/util/ArrayList;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->INDEX_HOME:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->INDEX_WORK:I

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->INDEX_OTHER:I

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->photo:[B

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->UnsupportedList:Ljava/util/ArrayList;

    .line 153
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/contact/Contact;->initPostalHashMap()V

    .line 154
    return-void
.end method

.method private changeTimeFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "eventDate"

    .prologue
    .line 665
    const/4 v1, 0x0

    .line 666
    .local v1, newDate:Ljava/lang/String;
    const/4 v0, 0x0

    .line 667
    .local v0, dayOffset:I
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 668
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, p1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 669
    iget v3, v2, Landroid/text/format/Time;->hour:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_0

    .line 670
    const/4 v0, 0x1

    .line 672
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%04d-%02d-%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Landroid/text/format/Time;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v2, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 674
    return-object v1
.end method

.method public static checkStringToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "token"

    .prologue
    .line 177
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    const-string p0, ""

    .line 180
    .end local p0
    :cond_1
    return-object p0
.end method

.method private getMillions(Ljava/lang/String;)J
    .locals 3
    .parameter "eventDate"

    .prologue
    .line 677
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 678
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 679
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method private initPostalHashMap()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    .line 158
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    .line 159
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    const/4 v1, 0x2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    .line 160
    return-void
.end method


# virtual methods
.method public addEMailOperation(Ljava/util/ArrayList;I)V
    .locals 8
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 584
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 585
    .local v5, uriBuilder:Landroid/net/Uri$Builder;
    const-string v6, "caller_is_syncadapter"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 586
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 587
    .local v4, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 588
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 589
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 590
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->retrieveEMailAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, email:Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 592
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 593
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 594
    const-string v6, "data1"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 595
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #email:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 599
    .end local v2           #j:I
    .end local v3           #size:I
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_1
    return-void
.end method

.method public addEventOperation(ILjava/util/ArrayList;I)V
    .locals 6
    .parameter "type"
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 641
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->birthday:Ljava/lang/String;

    .line 647
    .local v1, eventDate:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 651
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 652
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 653
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 654
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 655
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 657
    const-string v3, "data2"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 658
    const-string v3, "data1"

    invoke-direct {p0, v1}, Lcom/htc/android/mail/eassvc/contact/Contact;->changeTimeFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 659
    const-string v3, "data12"

    invoke-direct {p0, v1}, Lcom/htc/android/mail/eassvc/contact/Contact;->getMillions(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 660
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #eventDate:Ljava/lang/String;
    .end local v2           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_0
    return-void

    .line 642
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 643
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->anniversary:Ljava/lang/String;

    .restart local v1       #eventDate:Ljava/lang/String;
    goto :goto_0
.end method

.method public addIMOpertation(Ljava/util/ArrayList;I)V
    .locals 7
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 603
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 604
    .local v4, uriBuilder:Landroid/net/Uri$Builder;
    const-string v5, "caller_is_syncadapter"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 605
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 606
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 607
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 608
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 609
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 610
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "raw_contact_id"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 611
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 612
    const-string v5, "data2"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 613
    const-string v5, "data1"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 614
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v1           #j:I
    .end local v2           #size:I
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_1
    return-void
.end method

.method public addNoteOperation(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->notes:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 684
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 685
    .local v1, uriBuilder:Landroid/net/Uri$Builder;
    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 686
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 687
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 688
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 689
    const-string v2, "data1"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->notes:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 690
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_0
    return-void
.end method

.method public addOrganizationOperation(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->company:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 622
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 623
    .local v1, uriBuilder:Landroid/net/Uri$Builder;
    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 624
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 625
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 626
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 627
    const-string v2, "data2"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 628
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->company:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 629
    const-string v2, "data1"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->company:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 632
    const-string v2, "data4"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 634
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_3
    return-void
.end method

.method public addPhoneOperation(ILjava/util/ArrayList;I)V
    .locals 5
    .parameter "type"
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sparse-switch p1, :sswitch_data_0

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 508
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->assistantTelephone:Ljava/lang/String;

    .line 522
    .local v1, phoneNumber:Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 523
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 524
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 525
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 526
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 527
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 528
    const-string v3, "data2"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 529
    const-string v3, "data1"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 530
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 511
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #phoneNumber:Ljava/lang/String;
    .end local v2           #uriBuilder:Landroid/net/Uri$Builder;
    :sswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->carTelephone:Ljava/lang/String;

    .line 512
    .restart local v1       #phoneNumber:Ljava/lang/String;
    goto :goto_1

    .line 514
    .end local v1           #phoneNumber:Ljava/lang/String;
    :sswitch_2
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->companyMainPhone:Ljava/lang/String;

    .line 515
    .restart local v1       #phoneNumber:Ljava/lang/String;
    goto :goto_1

    .line 517
    .end local v1           #phoneNumber:Ljava/lang/String;
    :sswitch_3
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->radioTelephone:Ljava/lang/String;

    .line 518
    .restart local v1       #phoneNumber:Ljava/lang/String;
    goto :goto_1

    .line 506
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xe -> :sswitch_3
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public addPhonesOperation(ILjava/util/ArrayList;I)V
    .locals 9
    .parameter "type"
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 537
    .local v2, operationCount:I
    packed-switch p1, :pswitch_data_0

    .line 579
    :cond_0
    return-void

    .line 539
    :pswitch_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneHome:Ljava/util/ArrayList;

    .line 562
    .local v3, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 563
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 564
    .local v6, uriBuilder:Landroid/net/Uri$Builder;
    const-string v7, "caller_is_syncadapter"

    const-string v8, "true"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 565
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 566
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 567
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 568
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 569
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 570
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "raw_contact_id"

    invoke-virtual {v0, v7, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 571
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 572
    const-string v7, "data2"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 573
    const-string v7, "data1"

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 574
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    add-int/lit8 v2, v2, 0x1

    .line 567
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 542
    .end local v1           #j:I
    .end local v3           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #size:I
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #uriBuilder:Landroid/net/Uri$Builder;
    :pswitch_1
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneMobile:Ljava/util/ArrayList;

    .line 543
    .restart local v3       #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 545
    .end local v3           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneWork:Ljava/util/ArrayList;

    .line 546
    .restart local v3       #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 548
    .end local v3           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneOther:Ljava/util/ArrayList;

    .line 549
    .restart local v3       #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 551
    .end local v3           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneWorkFax:Ljava/util/ArrayList;

    .line 552
    .restart local v3       #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 554
    .end local v3           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_5
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneHomeFax:Ljava/util/ArrayList;

    .line 555
    .restart local v3       #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 557
    .end local v3           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->phonePager:Ljava/util/ArrayList;

    .line 558
    .restart local v3       #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public addPhotoOperation(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->photo:[B

    if-eqz v2, :cond_0

    .line 706
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 707
    .local v1, uriBuilder:Landroid/net/Uri$Builder;
    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 708
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 709
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 710
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 711
    const-string v2, "data15"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->photo:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 712
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_0
    return-void
.end method

.method public addPostalOperation(ILjava/util/ArrayList;I)V
    .locals 5
    .parameter "type"
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/htc/android/mail/eassvc/contact/Contact;->getAddressCV(IZ)Landroid/content/ContentValues;

    move-result-object v1

    .line 494
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 495
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 496
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 497
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 498
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 499
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 500
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_0
    return-void
.end method

.method public addUnsupportedOperation(Ljava/util/ArrayList;I)V
    .locals 7
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->UnsupportedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 471
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 472
    .local v3, uriBuilder:Landroid/net/Uri$Builder;
    const-string v5, "caller_is_syncadapter"

    const-string v6, "true"

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 473
    const/4 v2, 0x0

    .line 474
    .local v2, unsupportBuilder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->UnsupportedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 475
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->UnsupportedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;

    .line 476
    .local v0, item:Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, value:Ljava/lang/String;
    sget-object v5, Lcom/htc/android/mail/eassvc/contact/ContactManager;->UNSUPPORT_COLUMN:[Ljava/lang/String;

    array-length v5, v5

    rem-int v5, v1, v5

    if-nez v5, :cond_1

    .line 479
    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 483
    const-string v5, "raw_contact_id"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 484
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/htceas_unsupport"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 486
    :cond_1
    sget-object v5, Lcom/htc/android/mail/eassvc/contact/ContactManager;->UNSUPPORT_COLUMN:[Ljava/lang/String;

    sget-object v6, Lcom/htc/android/mail/eassvc/contact/ContactManager;->UNSUPPORT_COLUMN:[Ljava/lang/String;

    array-length v6, v6

    rem-int v6, v1, v6

    aget-object v5, v5, v6

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    .end local v0           #item:Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v1           #k:I
    .end local v2           #unsupportBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_3
    return-void
.end method

.method public addWebOperation(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "rawContactOpIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->website:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 696
    .local v1, uriBuilder:Landroid/net/Uri$Builder;
    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 697
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 698
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 699
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 700
    const-string v2, "data1"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->website:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 701
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_0
    return-void
.end method

.method public getAddressCV(IZ)Landroid/content/ContentValues;
    .locals 5
    .parameter "ContactMethodType"
    .parameter "includeRawContactId"

    .prologue
    const/4 v0, 0x0

    .line 316
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 317
    const/4 v1, 0x0

    .line 325
    .local v1, nArrayIdx:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/eassvc/contact/Contact;->isAddressEmpty(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 341
    .end local v1           #nArrayIdx:I
    :cond_0
    :goto_1
    return-object v0

    .line 318
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 319
    const/4 v1, 0x1

    .restart local v1       #nArrayIdx:I
    goto :goto_0

    .line 320
    .end local v1           #nArrayIdx:I
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 321
    const/4 v1, 0x2

    .restart local v1       #nArrayIdx:I
    goto :goto_0

    .line 329
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz p2, :cond_4

    .line 331
    const-string v2, "raw_contact_id"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_4
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v2, "data2"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v3, "data7"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v4, "city"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v3, "data4"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v4, "street"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v3, "data10"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v4, "country"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v3, "data9"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v4, "zip"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v3, "data8"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v4, "state"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAnniversaryCV(Z)Landroid/content/ContentValues;
    .locals 4
    .parameter "includeRawContactId"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->anniversary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 240
    const-string v1, "raw_contact_id"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "data2"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v1, "data1"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->anniversary:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/eassvc/contact/Contact;->changeTimeFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "data12"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->anniversary:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/eassvc/contact/Contact;->getMillions(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBirthdayCV(Z)Landroid/content/ContentValues;
    .locals 4
    .parameter "includeRawContactId"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->birthday:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 222
    const-string v1, "raw_contact_id"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v1, "data1"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->birthday:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/eassvc/contact/Contact;->changeTimeFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "data12"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->birthday:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/eassvc/contact/Contact;->getMillions(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCategoryCV(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, refCategories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_2

    .line 372
    :cond_0
    const/4 v6, 0x0

    .line 396
    :cond_1
    return-object v6

    .line 375
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 378
    .local v1, cate:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->findCategory(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;

    move-result-object v4

    .line 380
    .local v4, item:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    if-nez v4, :cond_4

    .line 381
    const-string v7, "HTC Favorite"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 382
    const-string v7, "eassvc.Contact"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCategoryCV() error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found in group"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v2, cv:Landroid/content/ContentValues;
    const-string v7, "raw_contact_id"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v7, "data1"

    iget v8, v4, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getEmailCV()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 452
    :cond_0
    const/4 v3, 0x0

    .line 466
    :cond_1
    return-object v3

    .line 454
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 457
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 458
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/eassvc/contact/Contact;->retrieveEMailAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, email:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "raw_contact_id"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v5, "data1"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFirstPhoneCV(Ljava/util/ArrayList;I)Landroid/content/ContentValues;
    .locals 3
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, lstPhone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 428
    :cond_0
    const/4 v0, 0x0

    .line 435
    :goto_0
    return-object v0

    .line 430
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "raw_contact_id"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    const-string v2, "data1"

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIMCV()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 727
    :cond_0
    const/4 v2, 0x0

    .line 742
    :cond_1
    return-object v2

    .line 729
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 732
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 733
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 734
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "raw_contact_id"

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v4, "data2"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    const-string v5, "data1"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNotesCV(Z)Landroid/content/ContentValues;
    .locals 3
    .parameter "includeRawContactId"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->notes:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 209
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 211
    const-string v1, "raw_contact_id"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "data1"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOrganizationCV(Z)Landroid/content/ContentValues;
    .locals 3
    .parameter "includeRawContactId"

    .prologue
    .line 267
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->company:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    .line 270
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 272
    const-string v1, "raw_contact_id"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_1
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "data1"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->company:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "data4"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "data2"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public getPeopleCV(Z)Landroid/content/ContentValues;
    .locals 3
    .parameter "includeRawContactId"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->firstName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->lastName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    .line 188
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz p1, :cond_1

    .line 191
    const-string v1, "raw_contact_id"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    const-string v1, "data1"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "data2"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "data3"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "data7"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->yomiFirstname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "data9"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->yomiLastname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "data5"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "data6"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPhoneCV(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 3
    .parameter "phone"
    .parameter "type"

    .prologue
    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 446
    :goto_0
    return-object v0

    .line 441
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "raw_contact_id"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v1, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPhoneCV(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, lstPhone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 407
    :cond_0
    const/4 v2, 0x0

    .line 422
    :cond_1
    return-object v2

    .line 409
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 412
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 413
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "raw_contact_id"

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v4, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v5, "data1"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPhotoCV(Z)Landroid/content/ContentValues;
    .locals 3
    .parameter "includeRawContactId"

    .prologue
    .line 254
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->photo:[B

    if-nez v1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 263
    :goto_0
    return-object v0

    .line 257
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 259
    const-string v1, "raw_contact_id"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_1
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "data15"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->photo:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public getPhotoRaw()[B
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->photo:[B

    return-object v0
.end method

.method public getUnsupportedCV(Z)Ljava/util/ArrayList;
    .locals 7
    .parameter "includeRawContactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->UnsupportedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->UnsupportedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 286
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->UnsupportedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;

    .line 287
    .local v1, item:Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, value:Ljava/lang/String;
    sget-object v5, Lcom/htc/android/mail/eassvc/contact/ContactManager;->UNSUPPORT_COLUMN:[Ljava/lang/String;

    array-length v5, v5

    rem-int v5, v2, v5

    if-nez v5, :cond_2

    .line 290
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #cv:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 294
    .restart local v0       #cv:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 295
    const-string v5, "raw_contact_id"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/htceas_unsupport"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_2
    sget-object v5, Lcom/htc/android/mail/eassvc/contact/ContactManager;->UNSUPPORT_COLUMN:[Ljava/lang/String;

    sget-object v6, Lcom/htc/android/mail/eassvc/contact/ContactManager;->UNSUPPORT_COLUMN:[Ljava/lang/String;

    array-length v6, v6

    rem-int v6, v2, v6

    aget-object v5, v5, v6

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v1           #item:Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #k:I
    :cond_4
    return-object v3
.end method

.method public getWebsiteCV(Z)Landroid/content/ContentValues;
    .locals 3
    .parameter "includeRawContactId"

    .prologue
    .line 344
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->website:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    .line 347
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 349
    const-string v1, "raw_contact_id"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_1
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "data1"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->website:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAddressEmpty(Ljava/util/HashMap;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, addrsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 357
    if-nez p1, :cond_0

    move v0, v1

    .line 366
    :goto_0
    return v0

    .line 359
    :cond_0
    const-string v0, "street"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "city"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "state"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "country"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 364
    goto :goto_0

    .line 366
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retrieveEMailAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 717
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 718
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 719
    const/4 v0, 0x0

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 721
    :cond_0
    return-object p1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->_id:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 1
    .parameter "photoStr"

    .prologue
    .line 746
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->photo:[B

    .line 747
    const-string v0, "jpeg"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact;->photoType:Ljava/lang/String;

    .line 748
    return-void
.end method

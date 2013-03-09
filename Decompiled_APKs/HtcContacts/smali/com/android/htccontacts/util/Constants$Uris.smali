.class public Lcom/android/htccontacts/util/Constants$Uris;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uris"
.end annotation


# static fields
.field public static ADD_TO_GROUP_WITH_GROUPS:Landroid/net/Uri;

.field public static CONTACT_EXCLUDE_ACCOUNT:Landroid/net/Uri;

.field public static CONTACT_LINKED_TO_ACCOUNT_URI:Landroid/net/Uri;

.field public static CONTACT_LINKED_TO_SOCIALNETWORK_URI:Landroid/net/Uri;

.field public static CONTACT_WITH_ACCOUNT_TYPES:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 294
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "linked_to"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/Constants$Uris;->CONTACT_LINKED_TO_ACCOUNT_URI:Landroid/net/Uri;

    .line 297
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "linked_sn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/Constants$Uris;->CONTACT_LINKED_TO_SOCIALNETWORK_URI:Landroid/net/Uri;

    .line 300
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "exclude_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/Constants$Uris;->CONTACT_EXCLUDE_ACCOUNT:Landroid/net/Uri;

    .line 303
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "with_account_types"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/Constants$Uris;->CONTACT_WITH_ACCOUNT_TYPES:Landroid/net/Uri;

    .line 306
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "add_member_with_groups"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/Constants$Uris;->ADD_TO_GROUP_WITH_GROUPS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

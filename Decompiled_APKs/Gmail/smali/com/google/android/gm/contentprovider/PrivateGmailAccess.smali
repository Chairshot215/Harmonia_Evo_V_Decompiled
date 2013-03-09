.class public Lcom/google/android/gm/contentprovider/PrivateGmailAccess;
.super Ljava/lang/Object;
.source "PrivateGmailAccess.java"


# static fields
.field public static final LABEL_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "labelUri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "canonicalName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "numConversations"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "numUnreadConversations"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text_color"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "background_color"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/contentprovider/PrivateGmailAccess;->LABEL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabelCursorLoader(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/CursorLoader;
    .locals 7
    .parameter "context"
    .parameter "projection"
    .parameter "account"
    .parameter "label"

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-static {p2, p3}, Lcom/google/android/gm/contentprovider/PrivateGmailAccess;->getLabelUriForName(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 72
    .local v2, labelUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    move-object v1, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getLabelUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "account"

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.google.android.gm/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/label/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getLabelUriForId(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3
    .parameter "account"
    .parameter "labelId"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/android/gm/contentprovider/PrivateGmailAccess;->getLabelUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 59
    .local v0, labelBaseUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static getLabelUriForName(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "canonicalName"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/android/gm/contentprovider/PrivateGmailAccess;->getLabelUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 48
    .local v0, labelBaseUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

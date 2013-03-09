.class public Lcom/htc/android/mail/eassvc/pim/EASMail;
.super Ljava/lang/Object;
.source "EASMail.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "mail"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EASACCOUNTS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "content://mail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMail;->CONTENT_URI:Landroid/net/Uri;

    .line 16
    const-string v0, "content://mail/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

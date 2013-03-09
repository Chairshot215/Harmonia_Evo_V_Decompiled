.class public Lcom/google/android/gsf/login/Compat$ContactsContract$Profile;
.super Ljava/lang/Object;
.source "Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/Compat$ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Profile"
.end annotation


# static fields
.field public static final CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/gsf/login/Compat$ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "profile"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat$ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 55
    sget-object v0, Lcom/google/android/gsf/login/Compat$ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat$ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

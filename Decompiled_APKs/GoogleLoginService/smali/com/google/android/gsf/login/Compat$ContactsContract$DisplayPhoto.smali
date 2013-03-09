.class public Lcom/google/android/gsf/login/Compat$ContactsContract$DisplayPhoto;
.super Ljava/lang/Object;
.source "Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/Compat$ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayPhoto"
.end annotation


# static fields
.field public static final CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/gsf/login/Compat$ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "photo_dimensions"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat$ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

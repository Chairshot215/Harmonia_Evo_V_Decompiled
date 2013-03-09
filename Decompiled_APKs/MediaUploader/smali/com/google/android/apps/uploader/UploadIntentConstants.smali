.class public Lcom/google/android/apps/uploader/UploadIntentConstants;
.super Ljava/lang/Object;
.source "UploadIntentConstants.java"


# static fields
.field public static final ACTION_UPLOAD:Ljava/lang/String; = "com.google.android.apps.uploader.action.UPLOAD"

.field public static final ACTION_UPLOAD_MULTIPLE:Ljava/lang/String; = "com.google.android.apps.uploader.action.UPLOAD_MULTIPLE"

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.google.android.apps.uploader.extra.account"

.field public static final EXTRA_AUTH_TOKEN_TYPE:Ljava/lang/String; = "com.google.android.apps.uploader.extra.authTokenType"

.field public static final EXTRA_DESTINATION:Ljava/lang/String; = "com.google.android.apps.uploader.extra.destination"

.field public static final EXTRA_REQUEST_TEMPLATE:Ljava/lang/String; = "com.google.android.apps.uploader.extra.requestTemplate"

.field public static final EXTRA_URL:Ljava/lang/String; = "com.google.android.apps.uploader.extra.url"

.field public static final REQUEST_AUTH_TOKEN_PLACEHOLDER:Ljava/lang/String; = "%=_auth_token_=%"

.field public static final REQUEST_BINARY_PLACEHOLDER:Ljava/lang/String; = "%=_binary_=&"

.field public static final REQUEST_BOUNDARY_LINE:Ljava/lang/String; = "%=_boundary_line_=&"

.field public static final REQUEST_NEW_LINE:Ljava/lang/String; = "\r\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    array-length v2, v1

    move v3, v7

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 50
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 51
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 52
    aget-object v5, v4, v7

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return-object v0
.end method

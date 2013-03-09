.class public Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;
.super Landroid/content/ContentProvider;
.source "HTCIMEProviderLatin.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "htc_ime_latin"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DEBUG:Z = false

.field public static final DIRECTORY_RC_CONTACTS_NAME:Ljava/lang/String; = "rc_contacts_display_name"

.field public static final DIRECTORY_RC_TOP_WEBSITE:Ljava/lang/String; = "rc_top_website"

.field public static final DIRECTORY_SC_GENERAL:Ljava/lang/String; = "sc_general"

.field public static final DIRECTORY_SC_LOCALE_ASSIGN:Ljava/lang/String; = "sc_locale_assign"

.field private static final ID_RC_CONTACTS_NAME:I = 0x0

.field private static final ID_RC_TOP_WEBSITE:I = 0x1

.field private static final ID_SC_GENERAL:I = 0x2

.field private static final ID_SC_LOCALE_ASSIGN:I = 0x3

.field private static final INFO:Z = true

.field private static final TAG:Ljava/lang/String; = "HTCIMEProviderLatin"

.field private static final sUriMatcher:Landroid/content/UriMatcher;

.field private static sXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    const-string v0, "content://htc_ime_latin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    .line 145
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sUriMatcher:Landroid/content/UriMatcher;

    .line 146
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime_latin"

    const-string v2, "rc_contacts_display_name"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime_latin"

    const-string v2, "rc_top_website"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime_latin"

    const-string v2, "sc_general"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ime_latin"

    const-string v2, "sc_locale_assign"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 136
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support delete. Failed to delete row in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 106
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    .line 114
    :goto_0
    return-object v0

    .line 111
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 114
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 125
    sget-object v1, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 126
    .local v0, uriCode:I
    const-string v1, "HTCIMEProviderLatin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[insert] coming request!  uriCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Landroid/database/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not support insert for this URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    invoke-virtual {p0}, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    .line 63
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, c:Landroid/database/Cursor;
    sget-object v2, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 78
    .local v1, uriCode:I
    const-string v2, "HTCIMEProviderLatin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[query] coming request!  uriCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    packed-switch v1, :pswitch_data_0

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :pswitch_0
    sget-object v2, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    invoke-virtual {v2, p4}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->queryTypoCorrectContactsDisplayName([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 86
    :pswitch_1
    sget-object v2, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    invoke-virtual {v2, p4}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->queryTypoCorrectTopWebsite([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 87
    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v2, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    invoke-virtual {v2, p4}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->querySpellCheck_General([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 91
    goto :goto_0

    .line 94
    :pswitch_3
    sget-object v2, Lcom/htc/android/htcime/provider/HTCIMEProviderLatin;->sXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    invoke-virtual {v2, p4}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->assignSpellCheckLocale([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 95
    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "HTCIMEProviderLatin"

    const-string v1, "[shutdown]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 141
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support update. Failed to update row in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

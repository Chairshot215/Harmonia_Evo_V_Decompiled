.class public abstract Landroid/widget/IMECursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "IMECursorAdapter.java"


# static fields
.field private static final AUTHORITY_Latin:Ljava/lang/String; = "htc_ime_latin"

.field private static final CONTENT_DIRECTORY:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final HTCIMEProviderLatin_CONTENT_URI:Landroid/net/Uri; = null

.field public static final INPUT_TYPE_BROWSER:I = 0x1

.field public static final INPUT_TYPE_DEFAULT:I = 0x0

.field public static final MAX_INPUT_TYPE:I = 0x2

.field private static final OLD_AUTHORITY:Ljava/lang/String; = "htc_ime"

.field private static final OLD_CONTENT_DIRECTORY:[Ljava/lang/String; = null

.field private static final OLD_HTCIMEProvider_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "IMECursorAdapter"

.field private static sContentDirectory:[Ljava/lang/String;

.field private static sContentUri:Landroid/net/Uri;


# instance fields
.field private MAX_STRING_COLLECT:I

.field private mInputType:I

.field private mSuperFilter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "content://htc_ime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/widget/IMECursorAdapter;->OLD_HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "typo_correct_contacts_display_name"

    aput-object v1, v0, v2

    const-string v1, "typo_correct_top_website"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/IMECursorAdapter;->OLD_CONTENT_DIRECTORY:[Ljava/lang/String;

    const-string v0, "content://htc_ime_latin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/widget/IMECursorAdapter;->HTCIMEProviderLatin_CONTENT_URI:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "rc_contacts_display_name"

    aput-object v1, v0, v2

    const-string v1, "rc_top_website"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/IMECursorAdapter;->CONTENT_DIRECTORY:[Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/widget/IMECursorAdapter;->HTCIMEProviderLatin_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Landroid/widget/IMECursorAdapter;->sContentUri:Landroid/net/Uri;

    sget-object v0, Landroid/widget/IMECursorAdapter;->CONTENT_DIRECTORY:[Ljava/lang/String;

    sput-object v0, Landroid/widget/IMECursorAdapter;->sContentDirectory:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/widget/IMECursorAdapter;->OLD_HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Landroid/widget/IMECursorAdapter;->sContentUri:Landroid/net/Uri;

    sget-object v0, Landroid/widget/IMECursorAdapter;->OLD_CONTENT_DIRECTORY:[Ljava/lang/String;

    sput-object v0, Landroid/widget/IMECursorAdapter;->sContentDirectory:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput v0, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    iput-boolean v0, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput v0, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    iput-boolean v0, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    return-void
.end method


# virtual methods
.method protected BeforeStringCorrection(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/IMECursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/IMECursorAdapter$1;

    invoke-direct {v0, p0, p0}, Landroid/widget/IMECursorAdapter$1;-><init>(Landroid/widget/IMECursorAdapter;Landroid/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroid/widget/IMECursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    :cond_1
    iget-object v0, p0, Landroid/widget/IMECursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    return v0
.end method

.method public reQueryOnBackgroundThread(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setInputType(I)V
    .locals 1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    :cond_0
    return-void
.end method

.method public setMaxStringReturn(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    :cond_0
    return-void
.end method

.method public setSuperType(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    return-void
.end method

.method protected stringCorrection(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/IMECursorAdapter;->BeforeStringCorrection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    return-object v8

    :cond_0
    const/4 v8, 0x0

    sget-object v0, Landroid/widget/IMECursorAdapter;->sContentUri:Landroid/net/Uri;

    sget-object v2, Landroid/widget/IMECursorAdapter;->sContentDirectory:[Ljava/lang/String;

    iget v3, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v10

    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/widget/IMECursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    if-nez v6, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    if-ge v9, v0, :cond_3

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

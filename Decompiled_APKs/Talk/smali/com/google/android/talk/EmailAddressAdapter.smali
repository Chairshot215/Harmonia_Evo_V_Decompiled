.class public Lcom/google/android/talk/EmailAddressAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EmailAddressAdapter.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/EmailAddressAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const v0, 0x7f040008

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/EmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    return-void
.end method

.method private final makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v3, s:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 66
    .local v1, flag:Z
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, name:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, address:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/4 v1, 0x1

    .line 74
    :cond_0
    if-eqz v1, :cond_1

    .line 75
    const-string v4, " <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    if-eqz v1, :cond_2

    .line 81
    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 89
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-direct {p0, p3}, Lcom/google/android/talk/EmailAddressAdapter;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/talk/EmailAddressAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 57
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, address:Ljava/lang/String;
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9
    .parameter "constraint"

    .prologue
    const/4 v3, 0x0

    .line 94
    if-nez p1, :cond_0

    const-string v8, ""

    .line 95
    .local v8, filter:Ljava/lang/String;
    :goto_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/talk/EmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/talk/EmailAddressAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "times_contacted DESC, display_name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 112
    :goto_1
    return-object v3

    .line 94
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #filter:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 100
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #filter:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    .line 112
    .local v7, columnCount:I
    new-instance v3, Lcom/google/android/talk/EmailAddressAdapter$1;

    invoke-direct {v3, p0, v7, v6}, Lcom/google/android/talk/EmailAddressAdapter$1;-><init>(Lcom/google/android/talk/EmailAddressAdapter;ILandroid/database/Cursor;)V

    goto :goto_1
.end method

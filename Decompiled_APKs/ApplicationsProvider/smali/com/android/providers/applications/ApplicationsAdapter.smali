.class public Lcom/android/providers/applications/ApplicationsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ApplicationsAdapter.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ApplicationsAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 36
    const/high16 v0, 0x7f02

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 37
    return-void
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 57
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, col:I
    invoke-static {p0, v0}, Lcom/android/providers/applications/ApplicationsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getColumnUri(Landroid/database/Cursor;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/android/providers/applications/ApplicationsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, uriString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 5
    .parameter "cursor"
    .parameter "col"

    .prologue
    const/4 v1, 0x0

    .line 62
    if-gez p1, :cond_0

    .line 67
    :goto_0
    return-object v1

    .line 64
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ApplicationsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from cursor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 41
    const/high16 v4, 0x7f05

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .local v0, icon1:Landroid/widget/ImageView;
    const v4, 0x7f050001

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 43
    .local v3, text1:Landroid/widget/TextView;
    const-string v4, "icon"

    invoke-static {p3, v4}, Lcom/android/providers/applications/ApplicationsAdapter;->getColumnUri(Landroid/database/Cursor;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 44
    .local v1, iconUri:Landroid/net/Uri;
    const-string v4, "name"

    invoke-static {p3, v4}, Lcom/android/providers/applications/ApplicationsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 47
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

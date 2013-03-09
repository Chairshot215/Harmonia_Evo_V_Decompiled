.class public Landroid/webkit/HTCQuickSearch;
.super Ljava/lang/Object;
.source "HTCQuickSearch.java"


# static fields
.field private static final DELAY_CENTER_SELECTION:I = 0x2bc

.field private static final MAX_SHARABLE_URL_LENGTH:I = 0x578

.field public static final QUICKLOOKUP_CONTENT_URI:Landroid/net/Uri; = null

.field public static final QUICKLOOKUP_GET_SETTINGS_URI:Landroid/net/Uri; = null

.field public static final QUICKLOOKUP_TRANSLATE_URI:Landroid/net/Uri; = null

.field private static final SHAREID_CENTER_SELECTION:I = 0x0

.field private static final SHARE_LIST_ACTIVITY:Ljava/lang/String; = "com.htc.app.SHARE"

.field public static final SHARE_MAGIC_WORD:Ljava/lang/String; = "#*"

.field private static final SHARE_SEPERATOR:Ljava/lang/String; = "[ ,.;?!\uff0c\u3002\uff1b\uff1f\uff01]"


# instance fields
.field private mContext:Landroid/content/Context;

.field mLanguagePair:[Ljava/lang/String;

.field private mPageLoading:Z

.field mProvider:Landroid/content/IContentProvider;

.field private mQuickSearchShareHandler:Landroid/os/Handler;

.field public mQuickSearchShareMode:Z

.field private mTouchedBeforePageFinish:Z

.field mTranslateResult:Ljava/lang/String;

.field mTranslateThread:Ljava/lang/Thread;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.htc.android.quicklookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "translate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_TRANSLATE_URI:Landroid/net/Uri;

    sget-object v0, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_GET_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/webkit/HTCQuickSearch;->mTouchedBeforePageFinish:Z

    iput-boolean v2, p0, Landroid/webkit/HTCQuickSearch;->mPageLoading:Z

    iput-boolean v2, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareMode:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "en"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/webkit/HTCQuickSearch;->mLanguagePair:[Ljava/lang/String;

    new-instance v0, Landroid/webkit/HTCQuickSearch$2;

    invoke-direct {v0, p0}, Landroid/webkit/HTCQuickSearch$2;-><init>(Landroid/webkit/HTCQuickSearch;)V

    iput-object v0, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTCQuickSearch;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static getDecodedShareContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v3, "x"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [C

    const/4 v1, 0x1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private getLastIndexOfThese(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getSharableUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const-string v3, ""

    const-string v2, ""

    const-string v1, ""

    :try_start_0
    const-string/jumbo v6, "utf-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    const-string v6, "#*"

    const-string/jumbo v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-lt v6, p3, :cond_0

    const-string v6, ""

    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    const-string v6, ""

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v6, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v5, p3, v6

    invoke-virtual {p0, p2}, Landroid/webkit/HTCQuickSearch;->getEncodedShareContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/webkit/HTCQuickSearch;->getEncodedShareContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_3

    const-string v6, "[ ,.;?!\uff0c\u3002\uff1b\uff1f\uff01]"

    invoke-direct {p0, p2, v6}, Landroid/webkit/HTCQuickSearch;->getLastIndexOfThese(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/webkit/HTCQuickSearch;->getEncodedShareContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static removeSharedContentFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const-string v2, "#*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_1

    const-string v2, "#*"

    const-string v3, "#*"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public enterQuickSearchShareMode(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    iget-boolean v1, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareMode:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareMode:Z

    iget-object v1, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWillDrawFind(Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "KENLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot found \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" through findAll."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getEncodedShareContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-char v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected getQuickLookupSettings()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTouchedBeforeFinish()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/HTCQuickSearch;->mTouchedBeforePageFinish:Z

    return v0
.end method

.method public leaveQuickSearchShareMode()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/webkit/HTCQuickSearch;->mPageLoading:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkit/HTCQuickSearch;->setTouchedBeforeFinish(Z)V

    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareMode:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareMode:Z

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillDrawFind(Z)V

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    :cond_1
    return-void
.end method

.method public setPageLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/HTCQuickSearch;->mPageLoading:Z

    return-void
.end method

.method public setTouchedBeforeFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/HTCQuickSearch;->mTouchedBeforePageFinish:Z

    return-void
.end method

.method public shareContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const v6, 0x20c0197

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const-string v2, ""

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {p2}, Landroid/webkit/HTCQuickSearch;->removeSharedContentFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x578

    invoke-direct {p0, p2, p1, v3}, Landroid/webkit/HTCQuickSearch;->getSharableUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.app.SHARE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "SHARED_CONTENT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ORIGINAL_URL"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "LONG_URL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Landroid/webkit/HTCQuickSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p2, ""

    goto :goto_1
.end method

.method protected startTranslation(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTCQuickSearch;->mProvider:Landroid/content/IContentProvider;

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mProvider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/HTCQuickSearch$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkit/HTCQuickSearch$1;-><init>(Landroid/webkit/HTCQuickSearch;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/webkit/HTCQuickSearch;->mTranslateThread:Ljava/lang/Thread;

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mTranslateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

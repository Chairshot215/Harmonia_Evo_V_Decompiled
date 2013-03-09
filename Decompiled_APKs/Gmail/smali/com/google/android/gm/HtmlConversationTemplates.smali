.class public Lcom/google/android/gm/HtmlConversationTemplates;
.super Ljava/lang/Object;
.source "HtmlConversationTemplates.java"


# static fields
.field public static final MESSAGE_PREFIX_LENGTH:I

.field private static final sAbsoluteImgUrlPattern:Ljava/util/regex/Pattern;

.field private static sConversationLower:Ljava/lang/String;

.field private static sConversationUpper:Ljava/lang/String;

.field private static sLoadedTemplates:Z

.field private static sMessage:Ljava/lang/String;

.field private static sSuperCollapsed:Ljava/lang/String;


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private mInProgress:Z

.field private mTimer:Lcom/google/android/gm/perf/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "m"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/gm/HtmlConversationTemplates;->MESSAGE_PREFIX_LENGTH:I

    .line 63
    const-string v0, "(<\\s*img\\s+(?:[^>]*\\s+)?)src(\\s*=[\\s\'\"]*http)"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/HtmlConversationTemplates;->sAbsoluteImgUrlPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mInProgress:Z

    .line 85
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    .line 89
    sget-boolean v0, Lcom/google/android/gm/HtmlConversationTemplates;->sLoadedTemplates:Z

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gm/HtmlConversationTemplates;->sLoadedTemplates:Z

    .line 91
    const v0, 0x7f080006

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/HtmlConversationTemplates;->sSuperCollapsed:Ljava/lang/String;

    .line 92
    const v0, 0x7f080005

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/HtmlConversationTemplates;->sMessage:Ljava/lang/String;

    .line 93
    const v0, 0x7f080004

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/HtmlConversationTemplates;->sConversationUpper:Ljava/lang/String;

    .line 94
    const v0, 0x7f080003

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/HtmlConversationTemplates;->sConversationLower:Ljava/lang/String;

    .line 96
    :cond_0
    return-void
.end method

.method private varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "template"
    .parameter "args"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mTimer:Lcom/google/android/gm/perf/Timer;

    const-string v1, "conversation append+format time"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 225
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mTimer:Lcom/google/android/gm/perf/Timer;

    const-string v1, "conversation append+format time"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private readTemplate(I)Ljava/lang/String;
    .locals 9
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v5, out:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 200
    .local v3, in:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    .end local v3           #in:Ljava/io/InputStreamReader;
    .local v4, in:Ljava/io/InputStreamReader;
    const/16 v6, 0x1000

    :try_start_1
    new-array v0, v6, [C

    .line 205
    .local v0, buf:[C
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    .local v1, chars:I
    if-lez v1, :cond_1

    .line 206
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    .end local v0           #buf:[C
    .end local v1           #chars:I
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStreamReader;
    .restart local v3       #in:Ljava/io/InputStreamReader;
    :goto_1
    if-eqz v3, :cond_0

    .line 213
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_0
    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, e:Ljava/io/IOException;
    :goto_2
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open template id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 209
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/InputStreamReader;
    .restart local v0       #buf:[C
    .restart local v1       #chars:I
    .restart local v4       #in:Ljava/io/InputStreamReader;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 212
    if-eqz v4, :cond_2

    .line 213
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    return-object v6

    .line 216
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStreamReader;
    .restart local v3       #in:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 212
    .end local v0           #buf:[C
    .end local v1           #chars:I
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method static replaceAbsoluteImgUrls(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "html"

    .prologue
    .line 112
    sget-object v0, Lcom/google/android/gm/HtmlConversationTemplates;->sAbsoluteImgUrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1src=\'data:\' gm-src$2"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendMessageHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZFI)V
    .locals 9
    .parameter "messageCursor"
    .parameter "isExpanded"
    .parameter "safeForImages"
    .parameter "zoomValue"
    .parameter "headerHeight"

    .prologue
    .line 118
    if-eqz p2, :cond_1

    const-string v1, "block"

    .line 119
    .local v1, bodyDisplay:Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_2

    const-string v2, "gm-show-images"

    .line 121
    .local v2, showImagesClass:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, body:Ljava/lang/String;
    if-nez p3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBodyEmbedsExternalResources()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationTemplates;->replaceAbsoluteImgUrls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    sget-object v3, Lcom/google/android/gm/HtmlConversationTemplates;->sMessage:Ljava/lang/String;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->position()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v1, v4, v5

    const/4 v5, 0x5

    aput-object v2, v4, v5

    const/4 v5, 0x6

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object v0, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    return-void

    .line 118
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #bodyDisplay:Ljava/lang/String;
    .end local v2           #showImagesClass:Ljava/lang/String;
    :cond_1
    const-string v1, "none"

    goto :goto_0

    .line 119
    .restart local v1       #bodyDisplay:Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public appendSuperCollapsedHtml(II)V
    .locals 4
    .parameter "firstCollapsed"
    .parameter "blockHeight"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mInProgress:Z

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call startConversation first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    sget-object v0, Lcom/google/android/gm/HtmlConversationTemplates;->sSuperCollapsed:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public emit()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, out:Ljava/lang/String;
    iput-object v2, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    .line 186
    iput-object v2, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    .line 187
    return-object v0
.end method

.method public endConversation(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 8
    .parameter "baseUri"
    .parameter "viewWidth"
    .parameter "enableContentReadySignal"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    iget-boolean v1, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mInProgress:Z

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "must call startConversation first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "initial-load"

    .line 171
    .local v0, initialLoadClass:Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/google/android/gm/HtmlConversationTemplates;->sConversationLower:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00a4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iput-boolean v5, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mInProgress:Z

    .line 176
    const-string v1, "Gmail"

    const-string v2, "rendered conversation of %d bytes, buffer capacity=%d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->capacity()I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationTemplates;->emit()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 169
    .end local v0           #initialLoadClass:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const/high16 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    .line 192
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    .line 193
    return-void
.end method

.method public setTimer(Lcom/google/android/gm/perf/Timer;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mTimer:Lcom/google/android/gm/perf/Timer;

    .line 100
    return-void
.end method

.method public startConversation(I)V
    .locals 5
    .parameter "conversationHeaderHeight"

    .prologue
    const/4 v4, 0x1

    .line 154
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mInProgress:Z

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call startConversation first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationTemplates;->reset()V

    .line 159
    sget-object v0, Lcom/google/android/gm/HtmlConversationTemplates;->sConversationUpper:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iput-boolean v4, p0, Lcom/google/android/gm/HtmlConversationTemplates;->mInProgress:Z

    .line 161
    return-void
.end method

.class public Lgov/nist/javax/sip/parser/Lexer;
.super Lgov/nist/core/LexerCore;
.source "Lexer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Lexer;->selectLexer(Ljava/lang/String;)V

    return-void
.end method

.method public static getHeaderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_1

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_0
.end method

.method public static getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public selectLexer(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lgov/nist/javax/sip/parser/Lexer;->lexerTables:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgov/nist/javax/sip/parser/Lexer;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Lexer;->addLexer(Ljava/lang/String;)Ljava/util/Hashtable;

    const-string v0, "method_keywordLexer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "REGISTER"

    const/16 v2, 0x804

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "ACK"

    const/16 v2, 0x806

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "OPTIONS"

    const/16 v2, 0x808

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "BYE"

    const/16 v2, 0x807

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "INVITE"

    const/16 v2, 0x805

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "sip"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "sips"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x858

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "SUBSCRIBE"

    const/16 v2, 0x835

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "NOTIFY"

    const/16 v2, 0x836

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "MESSAGE"

    const/16 v2, 0x846

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "PUBLISH"

    const/16 v2, 0x843

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const-string v0, "command_keywordLexer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Error-Info"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Allow-Events"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x841

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Authentication-Info"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x840

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Event"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Min-Expires"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "RSeq"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "RAck"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83d

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Reason"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83b

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Reply-To"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Subscription-State"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x838

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Timestamp"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x837

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "In-Reply-To"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80b

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "MIME-Version"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Alert-Info"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80d

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "From"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "To"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Refer-To"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x842

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Via"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x810

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "User-Agent"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x811

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Server"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x812

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Accept-Encoding"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x813

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Accept"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x814

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Allow"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x815

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Route"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x816

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Authorization"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x817

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x818

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Retry-After"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x819

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Proxy-Require"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Content-Language"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81b

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Unsupported"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Supported"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x814

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Warning"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Max-Forwards"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Date"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x820

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Priority"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x821

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x822

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Content-Encoding"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x823

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Content-Length"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x824

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Subject"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x825

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x826

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Contact"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x827

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Call-ID"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x828

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Require"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x829

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Expires"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Record-Route"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Organization"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82d

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "CSeq"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Accept-Language"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "WWW-Authenticate"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x830

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Call-Info"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x833

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x834

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "K"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x814

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "C"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x826

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "E"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x823

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "F"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "I"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x828

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "M"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x827

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "L"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x824

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "S"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x825

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "T"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "U"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x841

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "V"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x810

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "R"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x842

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "O"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "X"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x855

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "SIP-ETag"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x844

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "SIP-If-Match"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x845

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Session-Expires"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x855

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Min-SE"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x856

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Referred-By"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x854

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Replaces"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x857

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Join"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Path"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x847

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Service-Route"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x848

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Asserted-Identity"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x849

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Preferred-Identity"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Privacy"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Called-Party-ID"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x850

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Associated-URI"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x851

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Visited-Network-ID"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84b

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Charging-Function-Addresses"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Charging-Vector"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84d

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Access-Network-Info"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Media-Authorization"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x852

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Security-Server"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x859

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Security-Verify"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85b

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "Security-Client"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-User-Database"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85d

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Profile-Key"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Served-User"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Preferred-Service"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x860

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "P-Asserted-Service"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x861

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "References"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x862

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v0, "status_lineLexer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "sip"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "request_lineLexer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sip"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "sip_urlLexer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tel"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x839

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "sip"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    const-string v0, "sips"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x858

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

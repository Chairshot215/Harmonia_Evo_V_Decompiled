.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;
.super Ljava/lang/Object;
.source "AddressList.java"


# instance fields
.field private addresses:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter "addresses"
    .parameter "dontCopy"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_1

    .line 43
    if-eqz p2, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    .line 46
    :goto_1
    return-void

    .line 43
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object p1, v0

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    .local v3, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, line:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Goodbye."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    return-void

    .line 131
    :cond_1
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;

    move-result-object v2

    .line 132
    .local v2, list:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;
    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->print()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #list:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;
    .locals 3
    .parameter "rawAddressList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 115
    .local v0, parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->getInstance()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->parse()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddressList(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flatten()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;
    .locals 7

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, groupDetected:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 73
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->get(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;

    move-result-object v4

    instance-of v4, v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    if-nez v4, :cond_1

    .line 74
    const/4 v1, 0x1

    .line 79
    :cond_0
    if-nez v1, :cond_2

    .line 80
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    .line 90
    :goto_1
    return-object v4

    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, results:Ljava/util/ArrayList;
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 84
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->get(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;

    move-result-object v0

    .line 85
    .local v0, addr:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
    invoke-virtual {v0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;->addMailboxesTo(Ljava/util/ArrayList;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 90
    .end local v0           #addr:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
    :cond_3
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method

.method public get(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
    .locals 1
    .parameter "index"

    .prologue
    .line 59
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;

    return-object v0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 98
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->get(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;

    move-result-object v0

    .line 100
    .local v0, addr:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v0           #addr:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

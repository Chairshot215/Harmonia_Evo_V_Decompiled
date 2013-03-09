.class Lgnu/kawa/util/FileInfo;
.super Ljava/lang/Object;
.source "FixupHtmlToc.java"


# static fields
.field static final childPat:Ljava/util/regex/Pattern;

.field static fileMap:Ljava/util/Hashtable;

.field static final linkPat:Ljava/util/regex/Pattern;

.field static final parentPat:Ljava/util/regex/Pattern;


# instance fields
.field beforeNavbarText:Ljava/lang/StringBuffer;

.field bout:Ljava/io/ByteArrayOutputStream;

.field childLinkText:[Ljava/lang/String;

.field cout:Lgnu/mapping/OutPort;

.field file:Ljava/io/File;

.field fin:Ljava/io/FileInputStream;

.field in:Lgnu/mapping/InPort;

.field nchildren:I

.field newNavbarText:Ljava/lang/StringBuffer;

.field oldNavbarText:Ljava/lang/StringBuffer;

.field parent:Lgnu/kawa/util/FileInfo;

.field parentName:Ljava/lang/String;

.field path:Ljava/lang/String;

.field scanned:Z

.field writeNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    .line 93
    const-string v0, "<a .*</a>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->childPat:Ljava/util/regex/Pattern;

    .line 94
    const-string v0, "<ul[^>]* parent=[\'\"]([^\'\"]*)[\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->parentPat:Ljava/util/regex/Pattern;

    .line 96
    const-string v0, " href=[\'\"]([^\'\"]*)[\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->linkPat:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, abs:Ljava/lang/String;
    sget-object v2, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/util/FileInfo;

    .line 84
    .local v1, info:Lgnu/kawa/util/FileInfo;
    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lgnu/kawa/util/FileInfo;

    .end local v1           #info:Lgnu/kawa/util/FileInfo;
    invoke-direct {v1}, Lgnu/kawa/util/FileInfo;-><init>()V

    .line 87
    .restart local v1       #info:Lgnu/kawa/util/FileInfo;
    iput-object p0, v1, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    .line 88
    sget-object v2, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-object v1
.end method


# virtual methods
.method public scan()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 100
    iget-boolean v10, p0, Lgnu/kawa/util/FileInfo;->scanned:Z

    if-eqz v10, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iput-boolean v13, p0, Lgnu/kawa/util/FileInfo;->scanned:Z

    .line 103
    new-instance v10, Ljava/io/FileInputStream;

    iget-object v11, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v10, p0, Lgnu/kawa/util/FileInfo;->fin:Ljava/io/FileInputStream;

    .line 104
    new-instance v10, Lgnu/mapping/InPort;

    new-instance v11, Ljava/io/BufferedInputStream;

    iget-object v12, p0, Lgnu/kawa/util/FileInfo;->fin:Ljava/io/FileInputStream;

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;)V

    iput-object v10, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    .line 105
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v10, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    .line 106
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v10, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    .line 107
    iget-boolean v10, p0, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-eqz v10, :cond_2

    .line 109
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v10, p0, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    .line 110
    new-instance v10, Lgnu/mapping/OutPort;

    iget-object v11, p0, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10, v11}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    iput-object v10, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    .line 112
    :cond_2
    const/4 v6, 0x0

    .line 113
    .local v6, lineno:I
    const/4 v4, 0x0

    .line 114
    .local v4, inNavbar:Z
    const/4 v3, 0x0

    .line 115
    .local v3, inChildList:Z
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 118
    .local v2, chvec:Ljava/util/Vector;
    :cond_3
    :goto_1
    iget-object v10, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v10}, Lgnu/mapping/InPort;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, line:Ljava/lang/String;
    if-nez v5, :cond_5

    .line 161
    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v0, v10, [Ljava/lang/String;

    .line 162
    .local v0, charr:[Ljava/lang/String;
    array-length v10, v0

    iput v10, p0, Lgnu/kawa/util/FileInfo;->nchildren:I

    .line 163
    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 164
    iput-object v0, p0, Lgnu/kawa/util/FileInfo;->childLinkText:[Ljava/lang/String;

    .line 165
    iget-boolean v10, p0, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-nez v10, :cond_4

    .line 166
    iget-object v10, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v10}, Lgnu/mapping/InPort;->close()V

    .line 167
    :cond_4
    iget-object v10, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 169
    new-instance v7, Ljava/io/File;

    iget-object v10, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v10

    iget-object v11, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 170
    .local v7, parentFile:Ljava/io/File;
    invoke-static {v7}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v8

    .line 171
    .local v8, parentInfo:Lgnu/kawa/util/FileInfo;
    invoke-virtual {v8}, Lgnu/kawa/util/FileInfo;->scan()V

    .line 172
    iput-object v8, p0, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    goto/16 :goto_0

    .line 121
    .end local v0           #charr:[Ljava/lang/String;
    .end local v7           #parentFile:Ljava/io/File;
    .end local v8           #parentInfo:Lgnu/kawa/util/FileInfo;
    :cond_5
    if-eqz v4, :cond_b

    .line 123
    const-string v10, "<!--end-generated-navbar-->"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_6

    .line 125
    const/4 v4, 0x0

    .line 126
    goto :goto_2

    .line 128
    :cond_6
    iget-object v10, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v10, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    if-eqz v3, :cond_7

    .line 132
    const-string v10, "<!--end-children-toc-->"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_9

    .line 133
    const/4 v3, 0x0

    .line 148
    :cond_7
    :goto_3
    const-string v10, "<!--start-children-toc-->"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_8

    .line 149
    const/4 v3, 0x1

    .line 158
    :cond_8
    :goto_4
    iget-boolean v10, p0, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-eqz v10, :cond_3

    if-nez v4, :cond_3

    .line 159
    iget-object v10, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    invoke-virtual {v10, v5}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_9
    sget-object v10, Lgnu/kawa/util/FileInfo;->childPat:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 137
    .local v1, childMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 139
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_a
    sget-object v10, Lgnu/kawa/util/FileInfo;->parentPat:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 142
    .local v9, parentMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    if-nez v10, :cond_7

    .line 144
    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    goto :goto_3

    .line 153
    .end local v1           #childMatcher:Ljava/util/regex/Matcher;
    .end local v9           #parentMatcher:Ljava/util/regex/Matcher;
    :cond_b
    const-string v10, "<!--start-generated-navbar-->"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_8

    .line 155
    const/4 v4, 0x1

    goto :goto_4
.end method

.method public write()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, level:I
    move-object v1, p0

    .line 237
    .local v1, current:Lgnu/kawa/util/FileInfo;
    :goto_0
    iget-object v6, v1, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    if-eqz v6, :cond_0

    .line 239
    iget-object v1, v1, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_0
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    const-string v7, "<!--start-generated-navbar-->"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 243
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, v6}, Lgnu/kawa/util/FileInfo;->writeLinks(ILjava/lang/StringBuffer;)V

    .line 244
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    iget-object v7, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 245
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    const-string v7, "<!--end-generated-navbar-->"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 248
    :goto_1
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v6}, Lgnu/mapping/InPort;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 253
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .local v5, sbuf:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v6}, Lgnu/mapping/InPort;->close()V

    .line 255
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 256
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fixup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - no change"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    :goto_2
    return-void

    .line 251
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    :cond_1
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    invoke-virtual {v6, v3}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    .restart local v5       #sbuf:Ljava/lang/StringBuffer;
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 260
    .local v4, outs:Ljava/io/FileOutputStream;
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 261
    .local v0, bbuf:[B
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 262
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 263
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fixup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - updated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public writeLinks(ILjava/lang/StringBuffer;)V
    .locals 18
    .parameter "uplevel"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    move-object/from16 v5, p0

    .line 180
    .local v5, current:Lgnu/kawa/util/FileInfo;
    const/4 v14, 0x0

    .line 181
    .local v14, thischild:Lgnu/kawa/util/FileInfo;
    move/from16 v9, p1

    .local v9, i:I
    :goto_0
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_0

    .line 183
    move-object v14, v5

    .line 184
    iget-object v5, v5, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    goto :goto_0

    .line 186
    :cond_0
    if-nez p1, :cond_1

    .line 187
    const-string v15, "<!--start-children-toc-->\n"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_1
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    move-object v15, v0

    if-eqz v15, :cond_3

    .line 190
    const-string v15, "<ul parent=\""

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v15, "\">\n"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v13

    .line 197
    .local v13, thisURI:Ljava/net/URI;
    iget-object v15, v5, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    .line 198
    .local v6, currentURI:Ljava/net/URI;
    const/4 v9, 0x0

    :goto_2
    iget v15, v5, Lgnu/kawa/util/FileInfo;->nchildren:I

    if-ge v9, v15, :cond_7

    .line 200
    iget-object v15, v5, Lgnu/kawa/util/FileInfo;->childLinkText:[Ljava/lang/String;

    aget-object v11, v15, v9

    .line 201
    .local v11, linkText:Ljava/lang/String;
    const/4 v3, 0x0

    .line 203
    .local v3, ancestor:Z
    if-lez p1, :cond_5

    .line 205
    sget-object v15, Lgnu/kawa/util/FileInfo;->linkPat:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 206
    .local v10, linkMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    .line 207
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, hrefText:Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v12

    .line 209
    .local v12, linkURI:Ljava/net/URI;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " href=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v13}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lgnu/text/Path;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 210
    const/16 v15, 0x23

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 211
    .local v7, hash:I
    if-ltz v7, :cond_2

    .line 212
    const/4 v15, 0x0

    invoke-virtual {v8, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 213
    :cond_2
    new-instance v15, Ljava/io/File;

    invoke-virtual {v6, v8}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v15}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v4

    .line 214
    .local v4, curchild:Lgnu/kawa/util/FileInfo;
    if-ne v4, v14, :cond_4

    const/4 v15, 0x1

    move v3, v15

    .line 216
    :goto_3
    if-nez v3, :cond_5

    const/4 v15, 0x1

    move/from16 v0, p1

    move v1, v15

    if-le v0, v1, :cond_5

    .line 198
    .end local v4           #curchild:Lgnu/kawa/util/FileInfo;
    .end local v7           #hash:I
    .end local v8           #hrefText:Ljava/lang/String;
    .end local v10           #linkMatcher:Ljava/util/regex/Matcher;
    .end local v12           #linkURI:Ljava/net/URI;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 195
    .end local v3           #ancestor:Z
    .end local v6           #currentURI:Ljava/net/URI;
    .end local v11           #linkText:Ljava/lang/String;
    .end local v13           #thisURI:Ljava/net/URI;
    :cond_3
    const-string v15, "<ul>\n"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 214
    .restart local v3       #ancestor:Z
    .restart local v4       #curchild:Lgnu/kawa/util/FileInfo;
    .restart local v6       #currentURI:Ljava/net/URI;
    .restart local v7       #hash:I
    .restart local v8       #hrefText:Ljava/lang/String;
    .restart local v10       #linkMatcher:Ljava/util/regex/Matcher;
    .restart local v11       #linkText:Ljava/lang/String;
    .restart local v12       #linkURI:Ljava/net/URI;
    .restart local v13       #thisURI:Ljava/net/URI;
    :cond_4
    const/4 v15, 0x0

    move v3, v15

    goto :goto_3

    .line 219
    .end local v4           #curchild:Lgnu/kawa/util/FileInfo;
    .end local v7           #hash:I
    .end local v8           #hrefText:Ljava/lang/String;
    .end local v10           #linkMatcher:Ljava/util/regex/Matcher;
    .end local v12           #linkURI:Ljava/net/URI;
    :cond_5
    const-string v15, "<li>"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    if-eqz v3, :cond_6

    .line 223
    const/16 v15, 0xa

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    const/4 v15, 0x1

    sub-int v15, p1, v15

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/util/FileInfo;->writeLinks(ILjava/lang/StringBuffer;)V

    .line 226
    :cond_6
    const-string v15, "</li>\n"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 228
    .end local v3           #ancestor:Z
    .end local v11           #linkText:Ljava/lang/String;
    :cond_7
    const-string v15, "</ul>\n"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    if-nez p1, :cond_8

    .line 230
    const-string v15, "<!--end-children-toc-->\n"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_8
    return-void
.end method

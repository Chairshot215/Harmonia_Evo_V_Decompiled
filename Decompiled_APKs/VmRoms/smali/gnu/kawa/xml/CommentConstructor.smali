.class public Lgnu/kawa/xml/CommentConstructor;
.super Lgnu/mapping/MethodProc;
.source "CommentConstructor.java"


# static fields
.field public static final commentConstructor:Lgnu/kawa/xml/CommentConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/xml/CommentConstructor;

    invoke-direct {v0}, Lgnu/kawa/xml/CommentConstructor;-><init>()V

    sput-object v0, Lgnu/kawa/xml/CommentConstructor;->commentConstructor:Lgnu/kawa/xml/CommentConstructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 14
    .parameter "ctx"

    .prologue
    .line 18
    iget-object v9, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 19
    .local v9, saved:Lgnu/lists/Consumer;
    invoke-static {p1}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v8

    .line 22
    .local v8, out:Lgnu/lists/XConsumer;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .local v10, sbuf:Ljava/lang/StringBuffer;
    sget-object v3, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 24
    .local v3, endMarker:Ljava/lang/String;
    const/4 v4, 0x1

    .line 25
    .local v4, first:Z
    const/4 v5, 0x0

    .line 27
    .local v5, i:I
    :goto_0
    invoke-virtual {p1, v3}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    .local v1, arg:Ljava/lang/Object;
    if-ne v1, v3, :cond_0

    .line 49
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    .line 50
    .local v7, len:I
    new-array v2, v7, [C

    .line 51
    .local v2, buf:[C
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v7, v2, v13}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 52
    const/4 v12, 0x0

    invoke-interface {v8, v2, v12, v7}, Lgnu/lists/XConsumer;->writeComment([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {v9, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 58
    return-void

    .line 30
    .end local v2           #buf:[C
    .end local v7           #len:I
    :cond_0
    :try_start_1
    instance-of v12, v1, Lgnu/mapping/Values;

    if-eqz v12, :cond_2

    .line 32
    move-object v0, v1

    check-cast v0, Lgnu/mapping/Values;

    move-object v11, v0

    .line 33
    .local v11, vals:Lgnu/mapping/Values;
    const/4 v6, 0x0

    .local v6, it:I
    :goto_1
    invoke-virtual {v11, v6}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v6

    if-eqz v6, :cond_4

    .line 35
    if-nez v4, :cond_1

    .line 36
    const/16 v12, 0x20

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    :cond_1
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v11, v6}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v10}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 56
    .end local v1           #arg:Ljava/lang/Object;
    .end local v3           #endMarker:Ljava/lang/String;
    .end local v4           #first:Z
    .end local v5           #i:I
    .end local v6           #it:I
    .end local v10           #sbuf:Ljava/lang/StringBuffer;
    .end local v11           #vals:Lgnu/mapping/Values;
    :catchall_0
    move-exception v12

    invoke-static {v9, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v12

    .line 43
    .restart local v1       #arg:Ljava/lang/Object;
    .restart local v3       #endMarker:Ljava/lang/String;
    .restart local v4       #first:Z
    .restart local v5       #i:I
    .restart local v10       #sbuf:Ljava/lang/StringBuffer;
    :cond_2
    if-nez v4, :cond_3

    .line 44
    const/16 v12, 0x20

    :try_start_2
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    :cond_3
    const/4 v4, 0x0

    .line 46
    invoke-static {v1, v10}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x1001

    return v0
.end method

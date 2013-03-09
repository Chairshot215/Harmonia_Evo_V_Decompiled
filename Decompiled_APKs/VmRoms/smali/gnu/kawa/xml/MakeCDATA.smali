.class public Lgnu/kawa/xml/MakeCDATA;
.super Lgnu/mapping/MethodProc;
.source "MakeCDATA.java"


# static fields
.field public static final makeCDATA:Lgnu/kawa/xml/MakeCDATA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/xml/MakeCDATA;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeCDATA;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeCDATA;->makeCDATA:Lgnu/kawa/xml/MakeCDATA;

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
    .locals 9
    .parameter "ctx"

    .prologue
    .line 16
    iget-object v5, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 17
    .local v5, saved:Lgnu/lists/Consumer;
    invoke-static {p1}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v4

    .line 20
    .local v4, out:Lgnu/lists/XConsumer;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v6, sbuf:Ljava/lang/StringBuffer;
    sget-object v2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 24
    .local v2, endMarker:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v2}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, arg:Ljava/lang/Object;
    if-ne v0, v2, :cond_0

    .line 29
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 30
    .local v3, n:I
    new-array v1, v3, [C

    .line 31
    .local v1, chars:[C
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v1, v8}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 32
    const/4 v7, 0x0

    invoke-interface {v4, v1, v7, v3}, Lgnu/lists/XConsumer;->writeCDATA([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {v5, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 38
    return-void

    .line 27
    .end local v1           #chars:[C
    .end local v3           #n:I
    :cond_0
    :try_start_1
    invoke-static {v0, v6}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    .end local v0           #arg:Ljava/lang/Object;
    .end local v2           #endMarker:Ljava/lang/String;
    .end local v6           #sbuf:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v7

    invoke-static {v5, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v7
.end method

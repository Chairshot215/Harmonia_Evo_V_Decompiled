.class public Lgnu/kawa/xml/MakeResponseHeader;
.super Lgnu/mapping/MethodProc;
.source "MakeResponseHeader.java"


# static fields
.field public static makeResponseHeader:Lgnu/kawa/xml/MakeResponseHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lgnu/kawa/xml/MakeResponseHeader;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeResponseHeader;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeResponseHeader;->makeResponseHeader:Lgnu/kawa/xml/MakeResponseHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 20
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    .line 22
    .local v2, val:Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 23
    iget-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 24
    .local v1, out:Lgnu/lists/Consumer;
    invoke-interface {v1, v0}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 26
    invoke-interface {v1}, Lgnu/lists/Consumer;->endAttribute()V

    .line 27
    return-void
.end method

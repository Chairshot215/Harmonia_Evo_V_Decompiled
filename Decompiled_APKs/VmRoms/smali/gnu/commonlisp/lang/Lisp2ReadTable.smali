.class Lgnu/commonlisp/lang/Lisp2ReadTable;
.super Lgnu/kawa/lispexpr/ReadTable;
.source "Lisp2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected makeSymbol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/commonlisp/lang/Lisp2;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

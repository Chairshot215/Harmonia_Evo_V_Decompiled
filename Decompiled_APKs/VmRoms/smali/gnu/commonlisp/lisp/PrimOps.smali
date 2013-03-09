.class public Lgnu/commonlisp/lisp/PrimOps;
.super Lgnu/expr/ModuleBody;
.source "PrimOps.scm"


# static fields
.field public static final $instance:Lgnu/commonlisp/lisp/PrimOps;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final apply:Lgnu/expr/ModuleMethod;

.field public static final aref:Lgnu/expr/ModuleMethod;

.field public static final arrayp:Lgnu/expr/ModuleMethod;

.field public static final aset:Lgnu/expr/ModuleMethod;

.field public static final boundp:Lgnu/expr/ModuleMethod;

.field public static final car:Lgnu/expr/ModuleMethod;

.field public static final cdr:Lgnu/expr/ModuleMethod;

.field public static final char$Mnto$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final fillarray:Lgnu/expr/ModuleMethod;

.field public static final fset:Lgnu/expr/ModuleMethod;

.field public static final functionp:Lgnu/expr/ModuleMethod;

.field public static final get:Lgnu/expr/ModuleMethod;

.field public static final length:Lgnu/expr/ModuleMethod;

.field public static final make$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnget:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnmember:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnput:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnremprop:Lgnu/expr/ModuleMethod;

.field public static final put:Lgnu/expr/ModuleMethod;

.field public static final set:Lgnu/expr/ModuleMethod;

.field public static final setcar:Lgnu/expr/ModuleMethod;

.field public static final setcdr:Lgnu/expr/ModuleMethod;

.field public static final setplist:Lgnu/expr/ModuleMethod;

.field public static final stringp:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnname:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnplist:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnvalue:Lgnu/expr/ModuleMethod;

.field public static final symbolp:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x3003

    const/16 v7, 0x3002

    const/16 v6, 0x2002

    const/16 v5, 0x1001

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "functionp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-to-string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "substring"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "stringp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "fillarray"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "aset"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "aref"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "arrayp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "length"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "apply"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "fset"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-function"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-value"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "put"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "plist-member"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "plist-remprop"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "plist-put"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "plist-get"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "setplist"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-plist"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-name"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbolp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "boundp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "setcdr"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "setcar"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "cdr"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "car"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "t"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/commonlisp/lisp/PrimOps;

    invoke-direct {v0}, Lgnu/commonlisp/lisp/PrimOps;-><init>()V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->$instance:Lgnu/commonlisp/lisp/PrimOps;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/commonlisp/lisp/PrimOps;->$instance:Lgnu/commonlisp/lisp/PrimOps;

    const/4 v2, 0x1

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->car:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->cdr:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->setcar:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->setcdr:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->boundp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->symbolp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnplist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->setplist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnget:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnput:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnremprop:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnmember:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->get:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->put:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnvalue:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->set:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->fset:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v4, -0xfff

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->apply:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->length:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->arrayp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x19

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit24:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->aref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->aset:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->fillarray:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->stringp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1d

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->make$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1e

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit29:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->substring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x20

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->char$Mnto$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x21

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->functionp:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/commonlisp/lisp/PrimOps;->$instance:Lgnu/commonlisp/lisp/PrimOps;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs apply(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "func"
    .parameter "args"

    .prologue
    .line 110
    invoke-static {p0}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0}, Lgnu/commonlisp/lisp/PrimOps;->symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/mapping/Procedure;

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    sget-object v2, Lgnu/commonlisp/lisp/PrimOps;->apply:Lgnu/expr/ModuleMethod;

    invoke-static {p1, v1, v2}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Lgnu/mapping/Procedure;

    move-object v0, p0

    goto :goto_0
.end method

.method public static aref(Lgnu/lists/SimpleVector;I)Ljava/lang/Object;
    .locals 1
    .parameter "array"
    .parameter "k"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static arrayp(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 120
    instance-of v0, p0, Lgnu/lists/SimpleVector;

    return v0
.end method

.method public static aset(Lgnu/lists/SimpleVector;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "array"
    .parameter "k"
    .parameter "obj"

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-object p2
.end method

.method public static boundp(Ljava/lang/Object;)Z
    .locals 1
    .parameter "symbol"

    .prologue
    .line 19
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->isBound(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static car(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x"

    .prologue
    .line 5
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v0, :cond_0

    move-object v0, p0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Lgnu/lists/Pair;

    .end local p0
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static cdr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x"

    .prologue
    .line 8
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v0, :cond_0

    move-object v0, p0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Lgnu/lists/Pair;

    .end local p0
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static charToString(Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 3
    .parameter "ch"

    .prologue
    .line 155
    new-instance v0, Lgnu/lists/FString;

    const/4 v1, 0x1

    invoke-static {p0}, Lgnu/commonlisp/lang/CommonLisp;->asChar(Ljava/lang/Object;)C

    move-result v2

    invoke-direct {v0, v1, v2}, Lgnu/lists/FString;-><init>(IC)V

    return-object v0
.end method

.method public static fillarray(Lgnu/lists/SimpleVector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "array"
    .parameter "obj"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->fill(Ljava/lang/Object;)V

    .line 136
    return-object p1
.end method

.method public static fset(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "symbol"
    .parameter "object"

    .prologue
    .line 105
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lgnu/commonlisp/lang/Symbols;->setFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static functionp(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 158
    instance-of v0, p0, Lgnu/mapping/Procedure;

    return v0
.end method

.method public static get(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, p1, v0}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "symbol"
    .parameter "property"
    .parameter "default"

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static length(Lgnu/lists/Sequence;)I
    .locals 1
    .parameter "x"

    .prologue
    .line 117
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v0

    return v0
.end method

.method public static makeString(ILjava/lang/Object;)Lgnu/lists/FString;
    .locals 2
    .parameter "count"
    .parameter "ch"

    .prologue
    .line 143
    new-instance v0, Lgnu/lists/FString;

    invoke-static {p1}, Lgnu/commonlisp/lang/CommonLisp;->asChar(Ljava/lang/Object;)C

    move-result v1

    invoke-direct {v0, p0, v1}, Lgnu/lists/FString;-><init>(IC)V

    return-object v0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "plist"
    .parameter "prop"
    .parameter "default"

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static plistMember(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "plist"
    .parameter "prop"

    .prologue
    .line 56
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-static {p0, p1, v0}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_0

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit0:Lgnu/mapping/SimpleSymbol;

    goto :goto_0
.end method

.method public static plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "plist"
    .parameter "prop"
    .parameter "value"

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static plistRemprop(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "plist"
    .parameter "prop"

    .prologue
    .line 53
    invoke-static {p0, p1}, Lgnu/mapping/PropertyLocation;->plistRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "symbol"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "symbol"
    .parameter "value"

    .prologue
    .line 80
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public static setcar(Lgnu/lists/Pair;Ljava/lang/Object;)V
    .locals 0
    .parameter "p"
    .parameter "x"

    .prologue
    .line 11
    invoke-static {p0, p1}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    return-void
.end method

.method public static setcdr(Lgnu/lists/Pair;Ljava/lang/Object;)V
    .locals 0
    .parameter "p"
    .parameter "x"

    .prologue
    .line 14
    invoke-static {p0, p1}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    return-void
.end method

.method public static setplist(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "symbol"
    .parameter "plist"

    .prologue
    .line 43
    invoke-static {p0, p1}, Lgnu/mapping/PropertyLocation;->setPropertyList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-object p1
.end method

.method public static stringp(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 140
    instance-of v0, p0, Ljava/lang/CharSequence;

    return v0
.end method

.method public static substring(Ljava/lang/CharSequence;Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, p1, v0}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 5
    .parameter "str"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 146
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p2, v1, :cond_0

    .line 148
    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .end local p2
    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 149
    sget-object v2, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    .line 150
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .restart local p2
    move-object v2, p2

    .end local p2
    :goto_0
    sget-object v1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 151
    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_1

    .line 152
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 153
    :cond_1
    new-instance v3, Lgnu/lists/FString;

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v3, p0, v4, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v3

    :cond_2
    move-object v2, p2

    goto :goto_0
.end method

.method public static symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "symbol"

    .prologue
    .line 97
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getFunctionBinding(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "symbol"

    .prologue
    .line 27
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getPrintName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolPlist(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "symbol"

    .prologue
    .line 40
    invoke-static {p0}, Lgnu/mapping/PropertyLocation;->getPropertyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "sym"

    .prologue
    .line 73
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolp(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 24
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 158
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5
    :sswitch_0
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->car(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 8
    :sswitch_1
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->cdr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 19
    :sswitch_2
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->boundp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    .line 24
    :sswitch_3
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_1
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    .line 27
    :sswitch_4
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 40
    :sswitch_5
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolPlist(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_6
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 97
    :sswitch_7
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 117
    :sswitch_8
    :try_start_0
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->length(Lgnu/lists/Sequence;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 120
    :sswitch_9
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->arrayp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_2
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    .line 140
    :sswitch_a
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->stringp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_3
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    .line 155
    :sswitch_b
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->charToString(Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    goto :goto_0

    .line 158
    :sswitch_c
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->functionp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_4
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "length"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x12 -> :sswitch_6
        0x14 -> :sswitch_7
        0x17 -> :sswitch_8
        0x18 -> :sswitch_9
        0x1c -> :sswitch_a
        0x20 -> :sswitch_b
        0x21 -> :sswitch_c
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_0

    .line 146
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 11
    :pswitch_1
    :try_start_0
    check-cast p2, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->setcar(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 14
    :pswitch_2
    :try_start_1
    check-cast p2, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->setcdr(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 43
    :pswitch_3
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->setplist(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 47
    :pswitch_4
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 53
    :pswitch_5
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->plistRemprop(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 56
    :pswitch_6
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->plistMember(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 62
    :pswitch_7
    :try_start_2
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 80
    :pswitch_8
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 105
    :pswitch_9
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->fset(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 123
    :pswitch_a
    :try_start_3
    check-cast p2, Lgnu/lists/SimpleVector;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v1

    invoke-static {p2, v1}, Lgnu/commonlisp/lisp/PrimOps;->aref(Lgnu/lists/SimpleVector;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 134
    :pswitch_b
    :try_start_5
    check-cast p2, Lgnu/lists/SimpleVector;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->fillarray(Lgnu/lists/SimpleVector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 143
    :pswitch_c
    :try_start_6
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v1

    invoke-static {v1, p3}, Lgnu/commonlisp/lisp/PrimOps;->makeString(ILjava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    goto :goto_0

    .line 146
    :pswitch_d
    :try_start_7
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    goto :goto_0

    .line 11
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "setcar"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 14
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "setcdr"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 62
    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "get"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 124
    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "aref"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 125
    :catch_4
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "aref"

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 134
    :catch_5
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "fillarray"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 143
    :catch_6
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-string"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 146
    :catch_7
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "substring"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 47
    :sswitch_0
    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 50
    :sswitch_1
    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 62
    :sswitch_2
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 65
    :sswitch_3
    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 128
    :sswitch_4
    :try_start_1
    check-cast p2, Lgnu/lists/SimpleVector;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    invoke-static {p2, v1, p4}, Lgnu/commonlisp/lisp/PrimOps;->aset(Lgnu/lists/SimpleVector;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 146
    :sswitch_5
    :try_start_3
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "get"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 128
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "aset"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 129
    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "aset"

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 146
    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "substring"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc -> :sswitch_1
        0xf -> :sswitch_2
        0x11 -> :sswitch_3
        0x1a -> :sswitch_4
        0x1e -> :sswitch_5
    .end sparse-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 110
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v2, v1, [Ljava/lang/Object;

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    invoke-static {v0, v1}, Lgnu/commonlisp/lisp/PrimOps;->apply(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p2, v3

    aput-object v3, v1, v2

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 5
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 158
    :goto_0
    return v0

    :sswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 155
    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 140
    :sswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 120
    :sswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 117
    :sswitch_4
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_0

    const v0, -0xbffff

    goto :goto_0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 97
    :sswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 73
    :sswitch_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 40
    :sswitch_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 27
    :sswitch_8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 24
    :sswitch_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 19
    :sswitch_a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 8
    :sswitch_b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 5
    :sswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x12 -> :sswitch_6
        0x14 -> :sswitch_5
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1c -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 11
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 146
    :goto_0
    return v0

    :pswitch_1
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 143
    :pswitch_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 134
    :pswitch_3
    instance-of v0, p2, Lgnu/lists/SimpleVector;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 123
    :pswitch_4
    instance-of v0, p2, Lgnu/lists/SimpleVector;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 105
    :pswitch_5
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 80
    :pswitch_6
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 62
    :pswitch_7
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 56
    :pswitch_8
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 53
    :pswitch_9
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 47
    :pswitch_a
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 43
    :pswitch_b
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line 14
    :pswitch_c
    instance-of v0, p2, Lgnu/lists/Pair;

    if-nez v0, :cond_4

    move v0, v3

    goto/16 :goto_0

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line 11
    :pswitch_d
    instance-of v0, p2, Lgnu/lists/Pair;

    if-nez v0, :cond_5

    move v0, v3

    goto/16 :goto_0

    :cond_5
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x3

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 47
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 146
    :goto_0
    return v0

    :sswitch_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 128
    :sswitch_1
    instance-of v0, p2, Lgnu/lists/SimpleVector;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 65
    :sswitch_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 62
    :sswitch_3
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 50
    :sswitch_4
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 47
    :sswitch_5
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xf -> :sswitch_3
        0x11 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 110
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x5

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 5
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 8
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method

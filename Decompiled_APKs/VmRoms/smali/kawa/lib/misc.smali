.class public Lkawa/lib/misc;
.super Lgnu/expr/ModuleBody;
.source "misc.scm"


# static fields
.field public static final $instance:Lkawa/lib/misc;

.field static final Lit0:Lgnu/math/IntNum;

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

.field static final Lit2:Lgnu/expr/Keyword;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final add$Mnprocedure$Mnproperties:Lgnu/expr/ModuleMethod;

.field public static final base$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final boolean$Qu:Lgnu/expr/ModuleMethod;

.field public static final dynamic$Mnwind:Lgnu/expr/ModuleMethod;

.field public static final environment$Mnbound$Qu:Lgnu/expr/ModuleMethod;

.field public static final error:Lgnu/expr/ModuleMethod;

.field public static final force:Lgnu/expr/ModuleMethod;

.field public static final gentemp:Lgnu/expr/ModuleMethod;

.field public static final interaction$Mnenvironment:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field public static final namespace$Mnprefix:Lgnu/expr/ModuleMethod;

.field public static final namespace$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final null$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public static final procedure$Mnproperty:Lgnu/expr/GenericProc;

.field static final procedure$Mnproperty$Fn3:Lgnu/expr/ModuleMethod;

.field public static final procedure$Qu:Lgnu/expr/ModuleMethod;

.field public static final scheme$Mnimplementation$Mnversion:Lgnu/expr/ModuleMethod;

.field public static final scheme$Mnreport$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public static final set$Mnprocedure$Mnproperty$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mn$Grsymbol:Lgnu/expr/ModuleMethod;

.field public static final symbol$Eq$Qu:Lgnu/expr/GenericProc;

.field public static final symbol$Mn$Grstring:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnlocal$Mnname:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnnamespace:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnnamespace$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnprefix:Lgnu/expr/ModuleMethod;

.field public static final symbol$Qu:Lgnu/expr/ModuleMethod;

.field public static final values:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v4, 0x4

    const/16 v7, -0xfff

    const/4 v6, 0x0

    const/16 v5, 0x1001

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-procedure-properties"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "gentemp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "base-uri"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "force"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "dynamic-wind"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "procedure-property"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set-procedure-property!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "scheme-implementation-version"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "interaction-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "scheme-report-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "null-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "environment-bound?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "values"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "procedure?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string->symbol"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "namespace-prefix"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "namespace-uri"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-prefix"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-namespace-uri"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-namespace"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-local-name"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol->string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "boolean?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "misc-error"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit3:Lgnu/mapping/SimpleSymbol;

    const-string v0, "setter"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc;->Lit2:Lgnu/expr/Keyword;

    invoke-static {v8}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc;->Lit1:Lgnu/math/IntNum;

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lkawa/lib/misc;

    invoke-direct {v0}, Lkawa/lib/misc;-><init>()V

    sput-object v0, Lkawa/lib/misc;->$instance:Lkawa/lib/misc;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/misc;->$instance:Lkawa/lib/misc;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/misc;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->boolean$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/misc;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v4, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->symbol$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/misc;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v8, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->symbol$Mn$Grstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "source-location"

    const-string v3, "misc.scm:25"

    invoke-virtual {v0, v2, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lkawa/lib/misc;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, -0xffe

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "source-location"

    const-string v3, "misc.scm:27"

    invoke-virtual {v0, v2, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lkawa/lib/misc;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lkawa/lib/misc;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->symbol$Mnlocal$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/misc;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->symbol$Mnnamespace:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lkawa/lib/misc;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->symbol$Mnnamespace$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lkawa/lib/misc;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->symbol$Mnprefix:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lkawa/lib/misc;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->namespace$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lkawa/lib/misc;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->namespace$Mnprefix:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lkawa/lib/misc;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->string$Mn$Grsymbol:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lkawa/lib/misc;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->procedure$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    sget-object v3, Lkawa/lib/misc;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v4, -0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    sget-object v3, Lkawa/lib/misc;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->environment$Mnbound$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lkawa/lib/misc;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->null$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lkawa/lib/misc;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->scheme$Mnreport$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    sget-object v3, Lkawa/lib/misc;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->interaction$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    sget-object v3, Lkawa/lib/misc;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->scheme$Mnimplementation$Mnversion:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    sget-object v3, Lkawa/lib/misc;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3003

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->set$Mnprocedure$Mnproperty$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    sget-object v3, Lkawa/lib/misc;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->procedure$Mnproperty$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    sget-object v3, Lkawa/lib/misc;->Lit23:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3003

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->dynamic$Mnwind:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    sget-object v3, Lkawa/lib/misc;->Lit24:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->force:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v3, Lkawa/lib/misc;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->error:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1d

    sget-object v3, Lkawa/lib/misc;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->base$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1f

    sget-object v3, Lkawa/lib/misc;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->gentemp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x20

    sget-object v3, Lkawa/lib/misc;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->add$Mnprocedure$Mnproperties:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/misc;->$instance:Lkawa/lib/misc;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs addProcedureProperties(Lgnu/expr/GenericProc;[Ljava/lang/Object;)V
    .locals 0
    .parameter "proc"
    .parameter "args"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    return-void
.end method

.method public static baseUri()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkawa/lib/misc;->baseUri(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static baseUri(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "node"

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 113
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v1

    move-object v0, v1

    .line 115
    .end local p0
    .local v0, uri:Lgnu/text/Path;
    :goto_0
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v1

    .line 114
    .end local v0           #uri:Lgnu/text/Path;
    .restart local p0
    :cond_0
    check-cast p0, Lgnu/kawa/xml/KNode;

    .end local p0
    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->baseURI()Lgnu/text/Path;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .restart local v0       #uri:Lgnu/text/Path;
    :cond_1
    move-object v1, v0

    .line 115
    goto :goto_1
.end method

.method public static dynamicWind(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "before"
    .parameter "thunk"
    .parameter "after"

    .prologue
    .line 92
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :try_start_0
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    throw v0
.end method

.method public static error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "msg"
    .parameter "argsArray"

    .prologue
    .line 103
    new-instance v5, Lkawa/lib/misc$frame;

    invoke-direct {v5}, Lkawa/lib/misc$frame;-><init>()V

    iput-object p0, v5, Lkawa/lib/misc$frame;->msg:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, v6}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v3

    .line 104
    .local v3, args:Lgnu/lists/LList;
    iget-object v6, v5, Lkawa/lib/misc$frame;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-static {v6}, Lkawa/lib/ports;->callWithOutputString(Lgnu/mapping/Procedure;)Lgnu/lists/FString;

    move-result-object v6

    iput-object v6, v5, Lkawa/lib/misc$frame;->msg:Ljava/lang/Object;

    .line 105
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v1, v3

    :goto_0
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v7, :cond_0

    .line 107
    invoke-static {v6}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v3

    .line 109
    sget-object v6, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v7, Lkawa/standard/throw_name;->throwName:Lkawa/standard/throw_name;

    sget-object v8, Lkawa/lib/misc;->Lit3:Lgnu/mapping/SimpleSymbol;

    iget-object v5, v5, Lkawa/lib/misc$frame;->msg:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v5, v3}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 105
    :cond_0
    :try_start_0
    check-cast v1, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, arg0:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, arg:Ljava/lang/Object;
    new-instance v7, Lkawa/lib/misc$frame0;

    invoke-direct {v7}, Lkawa/lib/misc$frame0;-><init>()V

    iput-object v0, v7, Lkawa/lib/misc$frame0;->arg:Ljava/lang/Object;

    .line 107
    iget-object v7, v7, Lkawa/lib/misc$frame0;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    invoke-static {v7}, Lkawa/lib/ports;->callWithOutputString(Lgnu/mapping/Procedure;)Lgnu/lists/FString;

    move-result-object v7

    invoke-static {v7, v6}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    .local v2, arg0:Ljava/lang/Object;
    .local v4, result:Lgnu/lists/Pair;
    move-object v6, v4

    move-object v1, v2

    .end local v2           #arg0:Ljava/lang/Object;
    .local v1, arg0:Ljava/lang/Object;
    goto :goto_0

    .line 109
    .end local v0           #arg:Ljava/lang/Object;
    .end local v1           #arg0:Ljava/lang/Object;
    .end local v4           #result:Lgnu/lists/Pair;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "arg0"

    const/4 v8, -0x2

    invoke-direct {v6, v5, v7, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static force(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg"

    .prologue
    .line 98
    invoke-static {p0}, Lkawa/lang/Promise;->force(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static gentemp()Lgnu/mapping/Symbol;
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lgnu/expr/Symbols;->gentemp()Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    return-object v0
.end method

.method public static interactionEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method

.method public static isBoolean(Ljava/lang/Object;)Z
    .locals 4
    .parameter "x"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v1, :cond_0

    move v0, v3

    .local v0, x:Z
    :goto_0
    if-eqz v0, :cond_1

    .end local p0
    move v1, v0

    :goto_1
    return v1

    .end local v0           #x:Z
    .restart local p0
    :cond_0
    move v0, v2

    goto :goto_0

    .end local p0
    .restart local v0       #x:Z
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static isEnvironmentBound(Lgnu/mapping/Environment;Ljava/lang/Object;)Z
    .locals 1
    .parameter "env"
    .parameter "sym"

    .prologue
    .line 59
    invoke-static {p1}, Lgnu/kawa/lispexpr/LispLanguage;->langSymbolToSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v0

    return v0
.end method

.method public static isProcedure(Ljava/lang/Object;)Z
    .locals 2
    .parameter "x"

    .prologue
    .line 52
    instance-of v0, p0, Lgnu/mapping/Procedure;

    .local v0, x:Z
    if-eqz v0, :cond_0

    .end local p0
    move v1, v0

    :goto_0
    return v1

    :cond_0
    instance-of v1, p0, Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0
.end method

.method public static isSymbol(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 18
    instance-of v0, p0, Lgnu/mapping/Symbol;

    return v0
.end method

.method static lambda1(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    return v0
.end method

.method static lambda2$V(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;[Ljava/lang/Object;)Z
    .locals 5
    .parameter "s1"
    .parameter "s2"
    .parameter "argsArray"

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-static {p2, v4}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 28
    .local v0, r:Lgnu/lists/LList;
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v1

    .local v1, x:Z
    if-eqz v1, :cond_1

    sget-object v2, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 29
    sget-object v3, Lkawa/lib/misc;->symbol$Eq$Qu:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v3, p1, v0}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    .line 28
    :goto_0
    return v2

    :cond_0
    move v2, v4

    .line 29
    goto :goto_0

    :cond_1
    move v2, v1

    .line 28
    goto :goto_0
.end method

.method public static namespacePrefix(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "ns"

    .prologue
    .line 46
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static namespaceUri(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "ns"

    .prologue
    .line 43
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nullEnvironment()Lgnu/mapping/Environment;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkawa/lib/misc;->nullEnvironment(Ljava/lang/Object;)Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method

.method public static nullEnvironment(Ljava/lang/Object;)Lgnu/mapping/Environment;
    .locals 1
    .parameter "version"

    .prologue
    .line 67
    sget-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public static procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/misc;->procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "proc"
    .parameter "key"
    .parameter "default"

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static schemeImplementationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lkawa/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static schemeReportEnvironment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "version"

    .prologue
    .line 70
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lkawa/lib/misc;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    .line 72
    sget-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 71
    sget-object v1, Lkawa/lib/misc;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    .line 73
    sget-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    goto :goto_0

    .line 74
    :cond_1
    const-string v0, "scheme-report-environment version must be 4 or 5"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static setProcedureProperty$Ex(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "proc"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;
    .locals 1
    .parameter "str"

    .prologue
    .line 49
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    return-object v0
.end method

.method public static symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 21
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static symbolLocalName(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 31
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static symbolNamespace(Lgnu/mapping/Symbol;)Lgnu/mapping/Namespace;
    .locals 1
    .parameter "s"

    .prologue
    .line 34
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static symbolNamespaceUri(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 37
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static symbolPrefix(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 40
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs values([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 55
    invoke-static {p0}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 126
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 67
    :sswitch_0
    invoke-static {}, Lkawa/lib/misc;->nullEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    goto :goto_0

    .line 76
    :sswitch_1
    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    goto :goto_0

    .line 79
    :sswitch_2
    invoke-static {}, Lkawa/lib/misc;->schemeImplementationVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :sswitch_3
    invoke-static {}, Lkawa/lib/misc;->baseUri()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 126
    :sswitch_4
    invoke-static {}, Lkawa/lib/misc;->gentemp()Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x1d -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 15
    :pswitch_1
    invoke-static {p2}, Lkawa/lib/misc;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 18
    :pswitch_2
    invoke-static {p2}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 21
    :pswitch_3
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_4
    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lkawa/lib/misc;->symbolLocalName(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :pswitch_5
    :try_start_2
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lkawa/lib/misc;->symbolNamespace(Lgnu/mapping/Symbol;)Lgnu/mapping/Namespace;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_6
    :try_start_3
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2}, Lkawa/lib/misc;->symbolNamespaceUri(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_7
    :try_start_4
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2}, Lkawa/lib/misc;->symbolPrefix(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_8
    :try_start_5
    check-cast p2, Lgnu/mapping/Namespace;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2}, Lkawa/lib/misc;->namespaceUri(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_9
    :try_start_6
    check-cast p2, Lgnu/mapping/Namespace;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2}, Lkawa/lib/misc;->namespacePrefix(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_a
    :try_start_7
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_b
    invoke-static {p2}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 67
    :pswitch_c
    invoke-static {p2}, Lkawa/lib/misc;->nullEnvironment(Ljava/lang/Object;)Lgnu/mapping/Environment;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_d
    invoke-static {p2}, Lkawa/lib/misc;->schemeReportEnvironment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_e
    invoke-static {p2}, Lkawa/lib/misc;->force(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_f
    invoke-static {p2}, Lkawa/lib/misc;->baseUri(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "symbol->string"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 31
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "symbol-local-name"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 34
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "symbol-namespace"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 37
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "symbol-namespace-uri"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 40
    :catch_4
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "symbol-prefix"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 43
    :catch_5
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "namespace-uri"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 46
    :catch_6
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "namespace-prefix"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 49
    :catch_7
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string->symbol"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 88
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 25
    :sswitch_0
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p3, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3}, Lkawa/lib/misc;->lambda1(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 59
    :sswitch_1
    :try_start_2
    check-cast p2, Lgnu/mapping/Environment;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3}, Lkawa/lib/misc;->isEnvironmentBound(Lgnu/mapping/Environment;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 88
    :sswitch_2
    :try_start_3
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3}, Lkawa/lib/misc;->procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lambda"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lambda"

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 59
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "environment-bound?"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 88
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "procedure-property"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x11 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82
    :pswitch_1
    :try_start_0
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4}, Lkawa/lib/misc;->setProcedureProperty$Ex(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 88
    :pswitch_2
    :try_start_1
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3, p4}, Lkawa/lib/misc;->procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_3
    invoke-static {p2, p3, p4}, Lkawa/lib/misc;->dynamicWind(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "set-procedure-property!"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 88
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "procedure-property"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 27
    :sswitch_0
    aget-object p0, p2, v1

    :try_start_0
    check-cast p0, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    aget-object v0, p2, v3

    :try_start_1
    check-cast v0, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v1, p2

    sub-int/2addr v1, v4

    new-array v2, v1, [Ljava/lang/Object;

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    invoke-static {p0, v0, v1}, Lkawa/lib/misc;->lambda2$V(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x2

    aget-object v3, p2, v3

    aput-object v3, v1, v2

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 55
    :sswitch_1
    invoke-static {p2}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 103
    :sswitch_2
    aget-object v0, p2, v1

    array-length v1, p2

    sub-int/2addr v1, v3

    new-array v2, v1, [Ljava/lang/Object;

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p2, v3

    aput-object v3, v1, v2

    goto :goto_2

    .line 129
    :sswitch_3
    aget-object p0, p2, v1

    :try_start_2
    check-cast p0, Lgnu/expr/GenericProc;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    array-length v0, p2

    sub-int/2addr v0, v3

    new-array v1, v0, [Ljava/lang/Object;

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3

    invoke-static {p0, v0}, Lkawa/lib/misc;->addProcedureProperties(Lgnu/expr/GenericProc;[Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v0, v1

    goto :goto_3

    .line 27
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lambda"

    invoke-direct {v1, v0, v2, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "lambda"

    invoke-direct {v2, v1, v3, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 130
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-procedure-properties"

    invoke-direct {v1, v0, v2, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x10 -> :sswitch_1
        0x1c -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 67
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 126
    :goto_0
    return v0

    :sswitch_0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 111
    :sswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 79
    :sswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 76
    :sswitch_3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 67
    :sswitch_4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x1d -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 15
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 111
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 98
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 70
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 67
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 52
    :pswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 49
    :pswitch_6
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 46
    :pswitch_7
    instance-of v0, p2, Lgnu/mapping/Namespace;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 43
    :pswitch_8
    instance-of v0, p2, Lgnu/mapping/Namespace;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 40
    :pswitch_9
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 37
    :pswitch_a
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 34
    :pswitch_b
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 31
    :pswitch_c
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_6

    move v0, v3

    goto/16 :goto_0

    :cond_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line 21
    :pswitch_d
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_7

    move v0, v3

    goto/16 :goto_0

    :cond_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line 18
    :pswitch_e
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line 15
    :pswitch_f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const v1, -0xbffff

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 88
    :goto_0
    return v0

    :sswitch_0
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 59
    :sswitch_1
    instance-of v0, p2, Lgnu/mapping/Environment;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 25
    :sswitch_2
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Symbol;

    if-nez v0, :cond_3

    const v0, -0xbfffe

    goto :goto_0

    :cond_3
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x11 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
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

    packed-switch v0, :pswitch_data_0

    .line 82
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 92
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 88
    :pswitch_2
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 82
    :pswitch_3
    instance-of v0, p2, Lgnu/mapping/Procedure;

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

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 27
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 129
    :goto_0
    return v0

    :sswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 103
    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 55
    :sswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 27
    :sswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0x10 -> :sswitch_2
        0x1c -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 8
    .parameter "$ctx"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 15
    .local v0, $result:Lgnu/lists/Consumer;
    new-instance v2, Lgnu/expr/GenericProc;

    const-string v3, "symbol=?"

    invoke-direct {v2, v3}, Lgnu/expr/GenericProc;-><init>(Ljava/lang/String;)V

    sput-object v2, Lkawa/lib/misc;->symbol$Eq$Qu:Lgnu/expr/GenericProc;

    sget-object v2, Lkawa/lib/misc;->symbol$Eq$Qu:Lgnu/expr/GenericProc;

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/misc;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    aput-object v4, v3, v5

    sget-object v4, Lkawa/lib/misc;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 31
    new-instance v2, Lgnu/expr/GenericProc;

    const-string v3, "procedure-property"

    invoke-direct {v2, v3}, Lgnu/expr/GenericProc;-><init>(Ljava/lang/String;)V

    sput-object v2, Lkawa/lib/misc;->procedure$Mnproperty:Lgnu/expr/GenericProc;

    sget-object v2, Lkawa/lib/misc;->procedure$Mnproperty:Lgnu/expr/GenericProc;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/misc;->Lit2:Lgnu/expr/Keyword;

    aput-object v4, v3, v5

    sget-object v4, Lkawa/lib/misc;->set$Mnprocedure$Mnproperty$Ex:Lgnu/expr/ModuleMethod;

    aput-object v4, v3, v6

    .line 88
    sget-object v1, Lkawa/lib/misc;->procedure$Mnproperty$Fn3:Lgnu/expr/ModuleMethod;

    .line 90
    .local v1, procedure$Mnproperty:Lgnu/mapping/Procedure;
    sget-object v4, Lkawa/lib/misc;->procedure$Mnproperty$Fn3:Lgnu/expr/ModuleMethod;

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 92
    return-void
.end method

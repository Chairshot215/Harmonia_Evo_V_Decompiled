.class public Lgnu/kawa/slib/srfi2;
.super Lgnu/expr/ModuleBody;
.source "srfi2.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/srfi2;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxPattern;

.field static final Lit10:Lkawa/lang/SyntaxTemplate;

.field static final Lit11:Lkawa/lang/SyntaxPattern;

.field static final Lit12:Lkawa/lang/SyntaxTemplate;

.field static final Lit13:Lkawa/lang/SyntaxPattern;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxPattern;

.field static final Lit16:Lkawa/lang/SyntaxTemplate;

.field static final Lit17:Lkawa/lang/SyntaxTemplate;

.field static final Lit18:Lkawa/lang/SyntaxTemplate;

.field static final Lit19:Lkawa/lang/SyntaxPattern;

.field static final Lit2:Lkawa/lang/SyntaxTemplate;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxPattern;

.field static final Lit4:Lkawa/lang/SyntaxTemplate;

.field static final Lit5:Lkawa/lang/SyntaxPattern;

.field static final Lit6:Lkawa/lang/SyntaxTemplate;

.field static final Lit7:Lkawa/lang/SyntaxPattern;

.field static final Lit8:Lkawa/lang/SyntaxTemplate;

.field static final Lit9:Lkawa/lang/SyntaxTemplate;

.field public static final and$Mnlet$St:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "let"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "and"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001"

    const-string v2, "\u0018\u0004"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u0008\u0008"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v7}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit19:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u000b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit18:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u0011\u0018\u0004\t\u000b\u0008\t\u0003\u0008\u0012"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit17:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u000b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit16:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u001c\u000c\u000f\u0013\u0008"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit15:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u0011\u0018\u0004\t\u000b\u0008\t\u0003\u0008\u0012"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007,\u001c\u000c\u000f\u0008\u0013\u0008"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit13:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0000"

    const-string v2, "\u0011\u0018\u0004)\u0008\t\u000b\u0008\u0013\u0008\u0011\u0018\u000c\t\u000b\u0008\t\u0003\u0008\u001a"

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v6

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit12:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007<,\u000c\u000f\u000c\u0017\u0008\u001b\u0008"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit11:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001"

    const-string v2, "\u000b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit10:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001"

    const-string v2, "\u000b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit9:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001"

    const-string v2, "\u000b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit8:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u001c\u000c\u000f\u0008\u0008"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit7:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001"

    const-string v2, "\u000b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit6:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007,\u001c\u000c\u000f\u0008\u0008\u0008"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit5:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001"

    const-string v2, "\u0011\u0018\u0004)\u0008\t\u000b\u0008\u0013\u0008\u000b"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit4:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007<,\u000c\u000f\u000c\u0017\u0008\u0008\u0008"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit3:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    const-string v2, "\u0001\u0003\u0001\u0000"

    const-string v3, "\t\u0003\u0008\u0011\r\u000b\u0008\u0008\u0011\u0018\u0004\t\u0013\u001a"

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v5, "begin"

    invoke-direct {v0, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    aput-object v0, v4, v6

    invoke-direct {v1, v2, v3, v4, v7}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit2:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007,\r\u000f\u0008\u0008\u0008\u000c\u0017\u001b"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit1:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "and-let*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/kawa/slib/srfi2;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi2;-><init>()V

    sput-object v0, Lgnu/kawa/slib/srfi2;->$instance:Lgnu/kawa/slib/srfi2;

    sget-object v0, Lgnu/kawa/slib/srfi2;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi2;->$instance:Lgnu/kawa/slib/srfi2;

    const/4 v3, 0x0

    const/16 v4, 0x1001

    invoke-direct {v1, v2, v7, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v2, Lgnu/kawa/slib/srfi2;->$instance:Lgnu/kawa/slib/srfi2;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi2;->and$Mnlet$St:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/srfi2;->$instance:Lgnu/kawa/slib/srfi2;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "form"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit1:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit2:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    .end local p0
    :goto_0
    return-object v0

    .line 4
    .restart local p0
    :cond_0
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit3:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit4:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit5:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit6:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit7:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit8:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/std_syntax;->isIdentifier(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit9:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit10:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    const-string p0, "expected a variable name"

    .end local p0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    check-cast p0, [Ljava/lang/Object;

    move-object v1, p0

    :goto_1
    invoke-static {v0, v1}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    goto :goto_1

    .restart local p0
    :cond_5
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit11:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit12:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit13:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit14:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit15:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 19
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit16:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/std_syntax;->isIdentifier(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 20
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit17:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 21
    :cond_8
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit18:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    const-string p0, "expected a variable name"

    .end local p0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_9

    check-cast p0, [Ljava/lang/Object;

    move-object v1, p0

    :goto_2
    invoke-static {v0, v1}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    goto :goto_2

    .restart local p0
    :cond_a
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit19:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 23
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/srfi2;->Lit20:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lgnu/kawa/slib/srfi2;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method

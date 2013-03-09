.class public Lgnu/kawa/android/defs;
.super Lgnu/expr/ModuleBody;
.source "defs.scm"


# static fields
.field public static final $Pcprocess$Mnactivity:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lgnu/kawa/android/defs;

.field static final Lit0:Lkawa/lang/SyntaxPattern;

.field static final Lit1:Lkawa/lang/SyntaxTemplate;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lkawa/lang/SyntaxPattern;

.field static final Lit13:Lkawa/lang/SyntaxTemplate;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxTemplate;

.field static final Lit16:Lkawa/lang/SyntaxTemplate;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lkawa/lang/SyntaxTemplate;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxPattern;

.field static final Lit4:Lkawa/lang/SyntaxTemplate;

.field static final Lit5:Lkawa/lang/SyntaxTemplate;

.field static final Lit6:Lkawa/lang/SyntaxPattern;

.field static final Lit7:Lkawa/lang/SyntaxTemplate;

.field static final Lit8:Lkawa/lang/SyntaxTemplate;

.field static final Lit9:Lkawa/lang/SyntaxPattern;

.field public static final activity:Lkawa/lang/Macro;


# direct methods
.method public static $PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "form"

    .prologue
    const/4 v2, 0x0

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/kawa/android/defs;->Lit0:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/android/defs;->Lit1:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lgnu/kawa/android/defs;->Lit2:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/android/defs;->$PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    .line 15
    :goto_0
    return-object v0

    .line 4
    :cond_0
    sget-object v1, Lgnu/kawa/android/defs;->Lit3:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/android/defs;->Lit4:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lgnu/kawa/android/defs;->Lit5:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/android/defs;->$PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lgnu/kawa/android/defs;->Lit6:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/android/defs;->Lit7:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lgnu/kawa/android/defs;->Lit8:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/android/defs;->$PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lgnu/kawa/android/defs;->Lit9:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    :cond_3
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "invoke-special"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "void"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "android.os.Bundle"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "this"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "savedInstanceState"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "onCreate"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "android.app.Activity"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "::"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u0010"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit16:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u0012"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit15:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u0018\u0004"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/android/defs;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v7, "defs.scm"

    const v8, 0x15020

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    const-string v2, "\u0001\u0001\u0000"

    const-string v3, "\u0011\u0018\u0004\u0008\u000b"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v6, "define-simple-class"

    invoke-direct {v0, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    aput-object v0, v4, v5

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/android/defs;->Lit13:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u000f\u0013"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit12:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "activity"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%process-activity"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/android/defs;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u0008"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit9:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0000"

    const-string v2, "\n"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit8:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0000"

    const-string v2, "\u0003"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit7:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000b"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit6:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0003\u0001\u0000"

    const-string v2, "\u0012"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit5:Lkawa/lang/SyntaxTemplate;

    new-instance v3, Lkawa/lang/SyntaxTemplate;

    const-string v4, "\u0003\u0001\u0000"

    const-string v5, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0011\u0005\u0003\u0008\u0011\u0018$\u0008\u000b"

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v1, Lgnu/kawa/android/defs;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/android/defs;->Lit20:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/android/defs;->Lit17:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/android/defs;->Lit22:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v10, "defs.scm"

    const v11, 0x9031

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v9, "defs.scm"

    const v10, 0x902e

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "defs.scm"

    const v9, 0x901a

    invoke-static {v2, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v8, "defs.scm"

    const v9, 0x901a

    invoke-static {v2, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string v7, "defs.scm"

    const v8, 0x9010

    invoke-static {v1, v2, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    sget-object v1, Lgnu/kawa/android/defs;->Lit17:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v6, v0

    const/4 v0, 0x2

    sget-object v1, Lgnu/kawa/android/defs;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v6, v0

    const/4 v0, 0x3

    sget-object v1, Lgnu/kawa/android/defs;->Lit24:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/android/defs;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/android/defs;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v9, "defs.scm"

    const v10, 0xa02e

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    sget-object v8, Lgnu/kawa/android/defs;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/kawa/android/defs;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v11, "defs.scm"

    const v12, 0xa036

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v10, "defs.scm"

    const v11, 0xa036

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    sget-object v9, Lgnu/kawa/android/defs;->Lit20:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v11, "defs.scm"

    const v12, 0xa03f

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v10, "defs.scm"

    const v11, 0xa035

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v9, "defs.scm"

    const v10, 0xa02e

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "defs.scm"

    const v9, 0xa019

    invoke-static {v2, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string v7, "defs.scm"

    const v8, 0xa009

    invoke-static {v1, v2, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v7, 0x4

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "$lookup$"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/android/defs;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v8, "defs.scm"

    const v9, 0xc00a

    invoke-static {v1, v2, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "quasiquote"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v9, "setContentView"

    invoke-direct {v2, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v9}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v8, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    const-string v2, "defs.scm"

    const v8, 0xc00a

    invoke-static {v0, v1, v2, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-direct {v3, v4, v5, v6, v0}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/android/defs;->Lit4:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "T\u000c\u0002\r\u0007\u0000\u0008\u0016\u000c\u000f\u0008\u0013"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v5, "on-create-view"

    invoke-direct {v0, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-direct {v1, v2, v3, v0}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/android/defs;->Lit3:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0003\u0000"

    const-string v2, "\n"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit2:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0003\u0000"

    const-string v2, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0005\u0003"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/android/defs;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/android/defs;->Lit20:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/android/defs;->Lit17:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/android/defs;->Lit22:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v10, "defs.scm"

    const/16 v11, 0x4031

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v9, "defs.scm"

    const/16 v10, 0x402e

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "defs.scm"

    const/16 v9, 0x401a

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v8, "defs.scm"

    const/16 v9, 0x401a

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string v7, "defs.scm"

    const/16 v8, 0x4010

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/android/defs;->Lit17:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lgnu/kawa/android/defs;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lgnu/kawa/android/defs;->Lit24:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/android/defs;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/android/defs;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v9, "defs.scm"

    const/16 v10, 0x502e

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    sget-object v8, Lgnu/kawa/android/defs;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/kawa/android/defs;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v11, "defs.scm"

    const/16 v12, 0x5036

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v10, "defs.scm"

    const/16 v11, 0x5036

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    sget-object v9, Lgnu/kawa/android/defs;->Lit20:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v11, "defs.scm"

    const/16 v12, 0x503f

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v10, "defs.scm"

    const/16 v11, 0x5035

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v9, "defs.scm"

    const/16 v10, 0x502e

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "defs.scm"

    const/16 v9, 0x5019

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string v7, "defs.scm"

    const/16 v8, 0x5009

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit1:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "<\u000c\u0002\r\u0007\u0000\u0008\u0008\u000b"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v5, "on-create"

    invoke-direct {v0, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-direct {v1, v2, v3, v0}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/android/defs;->Lit0:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/kawa/android/defs;

    invoke-direct {v0}, Lgnu/kawa/android/defs;-><init>()V

    sput-object v0, Lgnu/kawa/android/defs;->$instance:Lgnu/kawa/android/defs;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/android/defs;->$instance:Lgnu/kawa/android/defs;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/android/defs;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->$Pcprocess$Mnactivity:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/android/defs;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x1001

    invoke-direct {v2, v1, v3, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v1, Lgnu/kawa/android/defs;->$instance:Lgnu/kawa/android/defs;

    invoke-static {v0, v2, v1}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->activity:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/android/defs;->$instance:Lgnu/kawa/android/defs;

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
    .locals 8
    .parameter "form"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 19
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/kawa/android/defs;->Lit12:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v6}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/android/defs;->Lit13:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lgnu/kawa/android/defs;->Lit14:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/android/defs;->Lit15:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lgnu/kawa/android/defs;->$PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lgnu/kawa/android/defs;->Lit16:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v2}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p2}, Lgnu/kawa/android/defs;->$PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Lgnu/kawa/android/defs;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    .line -1
    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 1
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

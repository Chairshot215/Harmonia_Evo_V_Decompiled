.class Lkawa/lang/SyntaxForms$PairSyntaxForm;
.super Lgnu/lists/ImmutablePair;
.source "SyntaxForms.java"

# interfaces
.implements Lkawa/lang/SyntaxForm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkawa/lang/SyntaxForms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PairSyntaxForm"
.end annotation


# instance fields
.field private datum:Lgnu/lists/Pair;

.field private scope:Lkawa/lang/TemplateScope;


# direct methods
.method public constructor <init>(Lgnu/lists/Pair;Lkawa/lang/TemplateScope;)V
    .locals 0
    .parameter "datum"
    .parameter "scope"

    .prologue
    .line 153
    invoke-direct {p0}, Lgnu/lists/ImmutablePair;-><init>()V

    .line 154
    iput-object p1, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->datum:Lgnu/lists/Pair;

    .line 155
    iput-object p2, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    .line 156
    return-void
.end method


# virtual methods
.method public getCar()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->car:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->datum:Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-static {v0, v1}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->car:Ljava/lang/Object;

    .line 172
    :cond_0
    iget-object v0, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->car:Ljava/lang/Object;

    return-object v0
.end method

.method public getCdr()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->cdr:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->datum:Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-static {v0, v1}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->cdr:Ljava/lang/Object;

    .line 178
    :cond_0
    iget-object v0, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->cdr:Ljava/lang/Object;

    return-object v0
.end method

.method public getDatum()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->datum:Lgnu/lists/Pair;

    return-object v0
.end method

.method public getScope()Lkawa/lang/TemplateScope;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lkawa/lang/SyntaxForms$PairSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lang/SyntaxForms;->toString(Lkawa/lang/SyntaxForm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

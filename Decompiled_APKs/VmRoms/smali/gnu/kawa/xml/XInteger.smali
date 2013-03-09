.class public Lgnu/kawa/xml/XInteger;
.super Lgnu/math/IntNum;
.source "XInteger.java"


# instance fields
.field private type:Lgnu/kawa/xml/XIntegerType;


# direct methods
.method constructor <init>(Lgnu/math/IntNum;Lgnu/kawa/xml/XIntegerType;)V
    .locals 1
    .parameter "value"
    .parameter "type"

    .prologue
    .line 22
    invoke-direct {p0}, Lgnu/math/IntNum;-><init>()V

    .line 23
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    iput-object v0, p0, Lgnu/kawa/xml/XInteger;->words:[I

    .line 24
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    iput v0, p0, Lgnu/kawa/xml/XInteger;->ival:I

    .line 25
    iput-object p2, p0, Lgnu/kawa/xml/XInteger;->type:Lgnu/kawa/xml/XIntegerType;

    .line 26
    return-void
.end method


# virtual methods
.method public getIntegerType()Lgnu/kawa/xml/XIntegerType;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lgnu/kawa/xml/XInteger;->type:Lgnu/kawa/xml/XIntegerType;

    return-object v0
.end method

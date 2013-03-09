.class public Lgnu/kawa/slib/condition$Mntype;
.super Ljava/lang/Object;
.source "conditions.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/slib/conditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mntype"
.end annotation


# instance fields
.field public all$Mnfields:Ljava/lang/Object;

.field public fields:Ljava/lang/Object;

.field public name:Ljava/lang/Object;

.field public supertype:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lgnu/kawa/slib/condition$Mntype;->name:Ljava/lang/Object;

    iput-object p2, p0, Lgnu/kawa/slib/condition$Mntype;->supertype:Ljava/lang/Object;

    iput-object p3, p0, Lgnu/kawa/slib/condition$Mntype;->fields:Ljava/lang/Object;

    iput-object p4, p0, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#<condition-type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    .local v0, sbuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/kawa/slib/condition$Mntype;->name:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lgnu/kawa/slib/syntaxutils$frame;
.super Lgnu/expr/ModuleBody;
.source "syntaxutils.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field pack:Lgnu/lists/LList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

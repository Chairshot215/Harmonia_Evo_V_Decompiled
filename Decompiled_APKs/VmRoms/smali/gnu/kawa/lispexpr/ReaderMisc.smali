.class public Lgnu/kawa/lispexpr/ReaderMisc;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderMisc.java"


# instance fields
.field kind:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    iput p1, p0, Lgnu/kawa/lispexpr/ReaderMisc;->kind:I

    return-void
.end method


# virtual methods
.method public getKind()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lgnu/kawa/lispexpr/ReaderMisc;->kind:I

    return v0
.end method

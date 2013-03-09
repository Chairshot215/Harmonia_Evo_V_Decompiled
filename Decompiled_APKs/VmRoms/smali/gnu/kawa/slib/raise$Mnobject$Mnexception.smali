.class public Lgnu/kawa/slib/raise$Mnobject$Mnexception;
.super Ljava/lang/Throwable;
.source "srfi34.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/slib/srfi34;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mnexception"
.end annotation


# instance fields
.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lgnu/kawa/slib/raise$Mnobject$Mnexception;->value:Ljava/lang/Object;

    return-void
.end method
